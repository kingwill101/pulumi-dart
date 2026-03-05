import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_eks/index.dart' as eks_index;
import 'package:pulumi_eks/pulumi_eks.dart' as eks;
import 'package:pulumi_kubernetes/apiextensions_k8s_io.dart' as k8sApiExt;
import 'package:pulumi_kubernetes/core.dart' as k8sCore;
import 'package:pulumi_kubernetes/helm_sh.dart' as k8sHelm;
import 'package:pulumi_kubernetes/meta.dart' as k8sMeta;
import 'package:pulumi_kubernetes/providers.dart' as k8sProviders;
import 'package:pulumi_kubernetes/storage_k8s_io.dart' as k8sStorage;

class EksGpuDraStack extends pulumi.Stack {
  late final pulumi.Output<dynamic> kubeconfig;
  late final pulumi.Output<String> clusterNameOutput;
  late final pulumi.Output<String> grafanaPassword;
  late final pulumi.Output<String> vpcId;
  late final pulumi.Output<List<String>?> privateSubnetIds;
  late final pulumi.Output<List<String>?> publicSubnetIds;

  EksGpuDraStack() {
    final config = pulumi.Config();
    final clusterName = config.get('clusterName') ?? 'gpu-dra-cluster';

    final vpc = awsx.ec2.Vpc(
      'gpu-vpc',
      args: awsx.ec2.VpcArgs(
        enableDnsHostnames: true.output(),
        cidrBlock: '10.0.0.0/16'.output(),
      ),
    );

    final cluster = eks.index.Cluster(
      'gpu-cluster',
      args: eks.index.ClusterArgs(
        name: clusterName.output(),
        vpcId: vpc.vpcId.apply((v) => v!),
        publicSubnetIds: vpc.publicSubnetIds.apply((v) => v!),
        privateSubnetIds: vpc.privateSubnetIds.apply((v) => v!),
        authenticationMode: eks_index.AuthenticationMode.api.input(),
        skipDefaultNodeGroup: true.output(),
        version: '1.34'.output(),
      ),
    );

    final nodeRole = aws.iam.Role(
      'system-node-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy:
            '''{"Version":"2012-10-17","Statement":[{"Action":"sts:AssumeRole","Effect":"Allow","Principal":{"Service":"ec2.amazonaws.com"}}]}'''
                .output(),
      ),
    );

    final nodeRolePolicies = <String>[
      'arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy',
      'arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy',
      'arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly',
    ];

    for (var i = 0; i < nodeRolePolicies.length; i++) {
      aws.iam.RolePolicyAttachment(
        'system-node-policy-$i',
        args: aws.iam.RolePolicyAttachmentArgs(
          role: nodeRole.name,
          policyArn: nodeRolePolicies[i].output(),
        ),
      );
    }

    final systemNodeGroup = eks.index.ManagedNodeGroup(
      'system-nodes',
      args: eks.index.ManagedNodeGroupArgs(
        cluster: cluster.output(),
        nodeGroupName: 'system-nodes'.output(),
        nodeRole: nodeRole.output(),
        instanceTypes: ['m6i.large'].output(),
        capacityType: 'ON_DEMAND'.output(),
        scalingConfig: aws.eks
            .NodeGroupScalingConfig(
              desiredSize: 2.output(),
              minSize: 1.output(),
              maxSize: 4.output(),
            )
            .output(),
        labels: {'node-role': 'system'}.output(),
      ),
    );

    final gpuNodeGroup = eks.index.ManagedNodeGroup(
      'gpu-nodes',
      args: eks.index.ManagedNodeGroupArgs(
        cluster: cluster.output(),
        nodeGroupName: 'gpu-nodes'.output(),
        nodeRole: nodeRole.output(),
        instanceTypes: ['p4d.24xlarge'].output(),
        capacityType: 'ON_DEMAND'.output(),
        scalingConfig: aws.eks
            .NodeGroupScalingConfig(
              desiredSize: 1.output(),
              minSize: 0.output(),
              maxSize: 2.output(),
            )
            .output(),
        diskSize: 100.output(),
        amiType: 'AL2023_x86_64_NVIDIA'.output(),
        labels: {
          'node-role': 'gpu',
          'nvidia.com/gpu.present': 'true',
          'nvidia.com/mig.config': 'all-balanced',
        }.output(),
        taints: [
          aws.eks.NodeGroupTaint(
            key: 'nvidia.com/gpu'.output(),
            value: 'true'.output(),
            effect: 'NO_SCHEDULE'.output(),
          ),
        ].output(),
      ),
    );

    final corednsAddon = aws.eks.Addon(
      'coredns',
      args: aws.eks.AddonArgs(
        clusterName: clusterName.output(),
        addonName: 'coredns'.output(),
        addonVersion: 'v1.13.1-eksbuild.1'.output(),
        resolveConflictsOnCreate: 'OVERWRITE'.output(),
        resolveConflictsOnUpdate: 'OVERWRITE'.output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [systemNodeGroup]),
    );

    final podIdentityAddon = aws.eks.Addon(
      'eks-pod-identity-agent',
      args: aws.eks.AddonArgs(
        clusterName: clusterName.output(),
        addonName: 'eks-pod-identity-agent'.output(),
        addonVersion: 'v1.3.10-eksbuild.2'.output(),
        resolveConflictsOnCreate: 'OVERWRITE'.output(),
        resolveConflictsOnUpdate: 'OVERWRITE'.output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [systemNodeGroup]),
    );

    final ebsCsiRole = aws.iam.Role(
      'ebs-csi-role',
      args: aws.iam.RoleArgs(
        name: 'AmazonEKS_EBS_CSI_DriverRole-$clusterName'.output(),
        assumeRolePolicy:
            '''{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Principal":{"Service":"pods.eks.amazonaws.com"},"Action":["sts:AssumeRole","sts:TagSession"]}]}'''
                .output(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'ebs-csi-policy-attachment',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: ebsCsiRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy'
                .output(),
      ),
    );

    final ebsCsiPodIdentity = aws.eks.PodIdentityAssociation(
      'ebs-csi-pod-identity',
      args: aws.eks.PodIdentityAssociationArgs(
        clusterName: clusterName.output(),
        namespace: 'kube-system'.output(),
        serviceAccount: 'ebs-csi-controller-sa'.output(),
        roleArn: ebsCsiRole.arn,
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [podIdentityAddon]),
    );

    final ebsCsiAddon = aws.eks.Addon(
      'aws-ebs-csi-driver',
      args: aws.eks.AddonArgs(
        clusterName: clusterName.output(),
        addonName: 'aws-ebs-csi-driver'.output(),
        addonVersion: 'v1.54.0-eksbuild.1'.output(),
        resolveConflictsOnCreate: 'OVERWRITE'.output(),
        resolveConflictsOnUpdate: 'OVERWRITE'.output(),
      ),
      options: pulumi.CustomResourceOptions(
        dependsOn: [systemNodeGroup, ebsCsiPodIdentity, corednsAddon],
      ),
    );

    final k8sProvider = k8sProviders.ProviderProvider(
      'k8s-provider',
      args: k8sProviders.ProviderArgs(
        kubeconfig: cluster.kubeconfigJson.apply((v) => v!),
        enableServerSideApply: true.output(),
      ),
    );

    final gp3StorageClass = k8sStorage.StorageClassStorageK8sIoV1(
      'gp3-storage-class',
      args: k8sStorage.StorageClassArgs(
        metadata: k8sMeta.ObjectMeta(
          name: 'gp3'.input(),
          annotations: {
            'storageclass.kubernetes.io/is-default-class': 'true',
          }.input(),
        ).output(),
        provisioner: 'ebs.csi.aws.com'.output(),
        volumeBindingMode: 'WaitForFirstConsumer'.output(),
        reclaimPolicy: 'Delete'.output(),
        allowVolumeExpansion: true.output(),
        parameters: {'type': 'gp3', 'encrypted': 'true'}.output(),
      ),
      options: pulumi.CustomResourceOptions(
        provider: k8sProvider,
        dependsOn: [ebsCsiAddon],
      ),
    );

    final gpuOperatorNamespace = k8sCore.NamespaceCoreV1(
      'gpu-operator-ns',
      args: k8sCore.NamespaceArgs(
        metadata: k8sMeta.ObjectMeta(name: 'gpu-operator'.input()).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    final gpuOperator = k8sHelm.Release(
      'gpu-operator',
      args: k8sHelm.ReleaseArgs(
        chart: 'gpu-operator'.output(),
        namespace: 'gpu-operator'.output(),
        version: 'v25.10.1'.output(),
        skipAwait: true.output(),
        repositoryOpts: k8sHelm.RepositoryOpts(
          repo: 'https://helm.ngc.nvidia.com/nvidia'.output(),
        ).output(),
        values: {
          'driver': {'enabled': false},
          'toolkit': {'enabled': false},
          'devicePlugin': {'enabled': false},
          'operator': {'defaultRuntime': 'containerd'},
          'nfd': {'enabled': true},
          'mig': {'strategy': 'mixed'},
          'migManager': {
            'enabled': true,
            'env': [
              {'name': 'WITH_REBOOT', 'value': 'true'},
            ],
          },
          'dcgmExporter': {
            'enabled': true,
            'serviceMonitor': {'enabled': true},
          },
        }.output(),
      ),
      options: pulumi.CustomResourceOptions(
        provider: k8sProvider,
        dependsOn: [gpuNodeGroup, gpuOperatorNamespace],
      ),
    );

    final draDriverNamespace = k8sCore.NamespaceCoreV1(
      'dra-driver-ns',
      args: k8sCore.NamespaceArgs(
        metadata: k8sMeta.ObjectMeta(
          name: 'nvidia-dra-driver'.input(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    final draDriver = k8sHelm.Release(
      'nvidia-dra-driver',
      args: k8sHelm.ReleaseArgs(
        chart: 'nvidia-dra-driver-gpu'.output(),
        namespace: 'nvidia-dra-driver'.output(),
        version: 'v25.8.1'.output(),
        skipAwait: true.output(),
        repositoryOpts: k8sHelm.RepositoryOpts(
          repo: 'https://helm.ngc.nvidia.com/nvidia'.output(),
        ).output(),
        values: {
          'nvidiaDriverRoot': '/',
          'gpuResourcesEnabledOverride': true,
          'resources': {
            'gpus': {'enabled': true},
            'computeDomains': {'enabled': false},
          },
          'kubeletPlugin': {
            'tolerations': [
              {
                'key': 'nvidia.com/gpu',
                'operator': 'Exists',
                'effect': 'NoSchedule',
              },
            ],
          },
          'controller': {
            'affinity': {
              'nodeAffinity': {
                'requiredDuringSchedulingIgnoredDuringExecution': {
                  'nodeSelectorTerms': [
                    {
                      'matchExpressions': [
                        {
                          'key': 'node-role',
                          'operator': 'In',
                          'values': ['system'],
                        },
                      ],
                    },
                  ],
                },
              },
            },
          },
        }.output(),
      ),
      options: pulumi.CustomResourceOptions(
        provider: k8sProvider,
        dependsOn: [gpuOperator, draDriverNamespace],
      ),
    );

    final monitoringNamespace = k8sCore.NamespaceCoreV1(
      'monitoring-ns',
      args: k8sCore.NamespaceArgs(
        metadata: k8sMeta.ObjectMeta(name: 'monitoring'.input()).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    k8sHelm.Release(
      'kube-prometheus-stack',
      args: k8sHelm.ReleaseArgs(
        chart: 'kube-prometheus-stack'.output(),
        namespace: 'monitoring'.output(),
        version: '81.2.1'.output(),
        skipAwait: true.output(),
        repositoryOpts: k8sHelm.RepositoryOpts(
          repo: 'https://prometheus-community.github.io/helm-charts'.output(),
        ).output(),
        values: {
          'prometheus': {
            'prometheusSpec': {
              'serviceMonitorSelectorNilUsesHelmValues': false,
              'podMonitorSelectorNilUsesHelmValues': false,
            },
          },
          'grafana': {
            'enabled': true,
            'adminPassword': 'gpu-monitoring-demo',
            'service': {'type': 'LoadBalancer'},
          },
          'alertmanager': {'enabled': false},
        }.output(),
      ),
      options: pulumi.CustomResourceOptions(
        provider: k8sProvider,
        dependsOn: [gpuOperator, gp3StorageClass, monitoringNamespace],
      ),
    );

    final migTestNamespace = k8sCore.NamespaceCoreV1(
      'mig-test-ns',
      args: k8sCore.NamespaceArgs(
        metadata: k8sMeta.ObjectMeta(name: 'mig-test'.input()).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    k8sCore.ConfigMapCoreV1(
      'fashion-mnist-scripts',
      args: k8sCore.ConfigMapArgs(
        metadata: k8sMeta.ObjectMeta(
          name: 'fashion-mnist-scripts'.input(),
          namespace: 'mig-test'.input(),
        ).output(),
        data: {
          'large-training-script.py': 'print("large training workload")',
          'medium-training-script.py': 'print("medium training workload")',
          'small-inference-script.py': 'print("small inference workload")',
        }.output(),
      ),
      options: pulumi.CustomResourceOptions(
        provider: k8sProvider,
        dependsOn: [migTestNamespace],
      ),
    );

    k8sApiExt.CustomResourceType(
      'mig-large-template',
      args: k8sApiExt.CustomResourceArgs(
        apiVersion: 'resource.k8s.io/v1'.output(),
        kind: 'ResourceClaimTemplate'.output(),
        metadata: k8sMeta.ObjectMeta(
          name: 'mig-large-template'.input(),
          namespace: 'mig-test'.input(),
        ).output(),
        others: {
          'spec': {
            'spec': {
              'devices': {
                'requests': [
                  {
                    'name': 'mig-large',
                    'exactly': {
                      'deviceClassName': 'mig.nvidia.com',
                      'count': 1,
                      'selectors': [
                        {
                          'cel': {
                            'expression':
                                'device.attributes["gpu.nvidia.com"].type == "mig" && device.attributes["gpu.nvidia.com"].profile == "3g.20gb"',
                          },
                        },
                      ],
                    },
                  },
                ],
              },
            },
          },
        }.output(),
      ),
      options: pulumi.CustomResourceOptions(
        provider: k8sProvider,
        dependsOn: [draDriver, migTestNamespace],
      ),
    );

    kubeconfig = cluster.kubeconfig;
    clusterNameOutput = clusterName.output();
    grafanaPassword = 'gpu-monitoring-demo'.output();
    vpcId = vpc.vpcId.apply((v) => v!);
    privateSubnetIds = vpc.privateSubnetIds.apply((v) => v!);
    publicSubnetIds = vpc.publicSubnetIds.apply((v) => v!);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('kubeconfig', kubeconfig),
      pulumi.OutputProperty('clusterNameOutput', clusterNameOutput),
      pulumi.OutputProperty('grafanaPassword', grafanaPassword),
      pulumi.OutputProperty('vpcId', vpcId),
      pulumi.OutputProperty('privateSubnetIds', privateSubnetIds),
      pulumi.OutputProperty('publicSubnetIds', publicSubnetIds),
    ];
  }
}
