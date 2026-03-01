import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_eks/pulumi_eks.dart' as eks;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/providers.dart' as k8sproviders;

class EksMigrateNodegroupsStack extends pulumi.Stack {
  late final pulumi.Output<String> vpcId;
  late final pulumi.Output<List<String>> allVpcSubnets;
  late final pulumi.Output<dynamic> kubeconfig;
  late final pulumi.Output<String> clusterName;
  late final pulumi.Output<String> namespaceName;
  late final pulumi.Output<String> ngStandardName;
  late final pulumi.Output<String> ng2xlargeName;
  late final pulumi.Output<String> nginxNodeSelectorInstanceType;

  EksMigrateNodegroupsStack() {
    final projectName = pulumi.getProject();

    final vpc = awsx.ec2.Vpc(
      projectName,
      args: awsx.ec2.VpcArgs(
        cidrBlock: '172.16.0.0/16'.output(),
        subnetSpecs: [
          awsx.ec2.SubnetSpec(type: awsx.ec2.SubnetType.valuePublic.output()),
          awsx.ec2.SubnetSpec(type: awsx.ec2.SubnetType.valuePrivate.output()),
        ].output(),
      ),
    );

    vpcId = vpc.vpcId;
    allVpcSubnets = pulumi.Output.tuple(vpc.privateSubnetIds, vpc.publicSubnetIds)
        .apply((pair) => [...pair.$1, ...pair.$2]);

    final nodeRole = aws.iam.Role(
      '$projectName-node-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Effect': 'Allow',
              'Principal': {'Service': 'ec2.amazonaws.com'},
            },
          ],
        }),
      ),
    );

    aws.iam.RolePolicyAttachment(
      '$projectName-worker-node-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: nodeRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy',
      ),
    );
    aws.iam.RolePolicyAttachment(
      '$projectName-cni-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: nodeRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy',
      ),
    );
    aws.iam.RolePolicyAttachment(
      '$projectName-registry-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: nodeRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly',
      ),
    );

    final myCluster = eks.Cluster(
      projectName,
      args: eks.ClusterArgs(
        version: '1.13'.output(),
        vpcId: vpcId,
        subnetIds: allVpcSubnets,
        nodeAssociatePublicIpAddress: false.output(),
        skipDefaultNodeGroup: true.output(),
        instanceRoles: [nodeRole].output(),
        enabledClusterLogTypes: [
          'api',
          'audit',
          'authenticator',
          'controllerManager',
          'scheduler',
        ].output(),
      ),
    );

    kubeconfig = myCluster.kubeconfig;
    clusterName = myCluster.core.apply((core) => core.cluster.name);

    final ngStandard = eks.ManagedNodeGroup(
      '$projectName-ng-standard',
      args: eks.ManagedNodeGroupArgs(
        cluster: myCluster.output(),
        nodeRole: nodeRole.output(),
        instanceTypes: ['t2.medium'].output(),
        scalingConfig: aws.eks.NodeGroupScalingConfig(
          desiredSize: 3.output(),
          minSize: 1.output(),
          maxSize: 3.output(),
        ).output(),
      ),
    );

    final ng2xlarge = eks.ManagedNodeGroup(
      '$projectName-ng-2xlarge',
      args: eks.ManagedNodeGroupArgs(
        cluster: myCluster.output(),
        nodeRole: nodeRole.output(),
        instanceTypes: ['t3.2xlarge'].output(),
        scalingConfig: aws.eks.NodeGroupScalingConfig(
          desiredSize: 3.output(),
          minSize: 1.output(),
          maxSize: 3.output(),
        ).output(),
        taints: [
          aws.eks.NodeGroupTaint(
            key: 'nginx',
            value: 'true'.output(),
            effect: 'NO_SCHEDULE',
          ),
        ].output(),
      ),
    );

    ngStandardName = ngStandard.nodeGroup.apply((ng) => ng.nodeGroupName);
    ng2xlargeName = ng2xlarge.nodeGroup.apply((ng) => ng.nodeGroupName);

    final k8sProvider = k8sproviders.ProviderProvider(
      '$projectName-k8s',
      args: k8sproviders.ProviderArgs(kubeconfig: myCluster.kubeconfigJson),
    );

    final namespace = k8score.NamespaceCoreV1(
      'apps',
      args: k8score.NamespaceArgs(),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );
    namespaceName = namespace.metadata.apply((m) => m.name ?? '');

    nginxNodeSelectorInstanceType = 't3.2xlarge'.output();
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('vpcId', vpcId),
      pulumi.OutputProperty('allVpcSubnets', allVpcSubnets),
      pulumi.OutputProperty('kubeconfig', kubeconfig),
      pulumi.OutputProperty('clusterName', clusterName),
      pulumi.OutputProperty('namespaceName', namespaceName),
      pulumi.OutputProperty('ngStandardName', ngStandardName),
      pulumi.OutputProperty('ng2xlargeName', ng2xlargeName),
      pulumi.OutputProperty(
        'nginxNodeSelectorInstanceType',
        nginxNodeSelectorInstanceType,
      ),
    ];
  }
}
