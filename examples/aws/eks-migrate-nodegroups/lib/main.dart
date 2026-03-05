import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_aws/iam.dart' as aws_iam;
import 'package:pulumi_awsx/ec2.dart' as awsx_ec2;
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
    final projectName = pulumi.Deployment.instance.projectName;

    final vpc = awsx.ec2.Vpc(
      projectName,
      args: awsx.ec2.VpcArgs(
        cidrBlock: '172.16.0.0/16'.output(),
        subnetSpecs: [
          awsx.ec2.SubnetSpec(type: awsx_ec2.SubnetType.valuePublic.input()),
          awsx.ec2.SubnetSpec(type: awsx_ec2.SubnetType.valuePrivate.input()),
        ].output(),
      ),
    );

    vpcId = vpc.vpcId.apply((v) => v!);
    allVpcSubnets = pulumi.Output.tuple(
      vpc.privateSubnetIds,
      vpc.publicSubnetIds,
    ).apply((pair) => [...?pair.$1, ...?pair.$2]);

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
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      '$projectName-worker-node-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: nodeRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy'.input(),
      ),
    );
    aws.iam.RolePolicyAttachment(
      '$projectName-cni-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: nodeRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy'.input(),
      ),
    );
    aws.iam.RolePolicyAttachment(
      '$projectName-registry-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: nodeRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly'
            .input(),
      ),
    );

    final myCluster = eks.index.Cluster(
      projectName,
      args: eks.index.ClusterArgs(
        version: '1.13'.output(),
        vpcId: vpcId,
        subnetIds: allVpcSubnets,
        nodeAssociatePublicIpAddress: false.output(),
        skipDefaultNodeGroup: true.output(),
        instanceRoles: pulumi.InputList<aws_iam.Role>([nodeRole.input()]),
        enabledClusterLogTypes: [
          'api',
          'audit',
          'authenticator',
          'controllerManager',
          'scheduler',
        ].input(),
      ),
    );

    kubeconfig = myCluster.kubeconfig;
    clusterName = myCluster.eksCluster.apply((cluster) => cluster?.name ?? '');

    final ngStandard = eks.index.ManagedNodeGroup(
      '$projectName-ng-standard',
      args: eks.index.ManagedNodeGroupArgs(
        cluster: myCluster.input(),
        nodeRole: nodeRole.input(),
        instanceTypes: ['t2.medium'].input(),
        scalingConfig: aws.eks
            .NodeGroupScalingConfig(
              desiredSize: 3.output(),
              minSize: 1.output(),
              maxSize: 3.output(),
            )
            .output(),
      ),
    );

    final ng2xlarge = eks.index.ManagedNodeGroup(
      '$projectName-ng-2xlarge',
      args: eks.index.ManagedNodeGroupArgs(
        cluster: myCluster.input(),
        nodeRole: nodeRole.input(),
        instanceTypes: ['t3.2xlarge'].input(),
        scalingConfig: aws.eks
            .NodeGroupScalingConfig(
              desiredSize: 3.output(),
              minSize: 1.output(),
              maxSize: 3.output(),
            )
            .output(),
        taints: [
          aws.eks.NodeGroupTaint(
            key: 'nginx'.input(),
            value: 'true'.output(),
            effect: 'NO_SCHEDULE'.input(),
          ),
        ].input(),
      ),
    );

    ngStandardName = ngStandard.nodeGroup.apply(
      (ng) => ng?.nodeGroupName ?? '',
    );
    ng2xlargeName = ng2xlarge.nodeGroup.apply((ng) => ng?.nodeGroupName ?? '');

    final k8sProvider = k8sproviders.ProviderProvider(
      '$projectName-k8s',
      args: k8sproviders.ProviderArgs(
        kubeconfig: myCluster.kubeconfigJson.apply((v) => v!),
      ),
    );

    final namespace = k8score.NamespaceCoreV1(
      'apps',
      args: k8score.NamespaceArgs(),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );
    namespaceName = namespace.metadata.apply((m) => m.name);

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
