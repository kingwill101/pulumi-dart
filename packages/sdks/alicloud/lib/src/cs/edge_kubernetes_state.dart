// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_kubernetes_addon.dart';
import 'edge_kubernetes_certificate_authority.dart';
import 'edge_kubernetes_connections.dart';
import 'edge_kubernetes_log_config.dart';
import 'edge_kubernetes_runtime.dart';
import 'edge_kubernetes_worker_data_disk.dart';
import 'edge_kubernetes_worker_node.dart';

/// Input properties used for looking up and filtering EdgeKubernetes resources.
class EdgeKubernetesState {
  /// The addon you want to install in cluster. See `addons` below.
  final pulumi.Input<List<EdgeKubernetesAddon>>? addons;
  /// The ID of availability zone.
  final pulumi.Input<String>? availabilityZone;
  /// (Map, Deprecated from v1.248.0) Nested attribute containing certificate authority data for your cluster. Please use the attribute certificate_authority of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  final pulumi.Input<EdgeKubernetesCertificateAuthority>? certificateAuthority;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  final pulumi.Input<String>? clientCert;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  final pulumi.Input<String>? clientKey;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  ///
  /// *Removed params*
  final pulumi.Input<String>? clusterCaCert;
  /// The cluster specifications of kubernetes cluster,which can be empty. Valid values:
  /// * ack.standard : Standard edge clusters.
  /// * ack.pro.small : Professional edge clusters.
  final pulumi.Input<String>? clusterSpec;
  /// (Map) Map of kubernetes cluster connection information.
  final pulumi.Input<EdgeKubernetesConnections>? connections;
  /// Whether to enable cluster deletion protection.
  final pulumi.Input<bool>? deletionProtection;
  /// Install cloud monitor agent on ECS. default: `true`.
  final pulumi.Input<bool>? installCloudMonitor;
  /// Enable to create advanced security group. default: false. See [Advanced security group](https://www.alibabacloud.com/help/doc-detail/120621.htm).
  final pulumi.Input<bool>? isEnterpriseSecurityGroup;
  /// The keypair of ssh login cluster node, you have to create it first. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  final pulumi.Input<String>? keyName;
  /// The path of kube config, like ~/.kube/config. Please use the attribute output_file of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  final pulumi.Input<String>? kubeConfig;
  /// The cluster api server load balance instance specification. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html).
  /// ->NOTE: If you want to use `Flannel` as CNI network plugin, You need to specific the `pod_cidr` field and addons with `flannel`.
  ///
  /// *Worker params*
  final pulumi.Input<String>? loadBalancerSpec;
  /// A list of one element containing information about the associated log store. See `log_config` below.
  final pulumi.Input<EdgeKubernetesLogConfig>? logConfig;
  /// The kubernetes cluster's name. It is unique in one Alicloud account.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? namePrefix;
  /// The ID of nat gateway used to launch kubernetes cluster.
  final pulumi.Input<String>? natGatewayId;
  /// Whether to create a new nat gateway while creating kubernetes cluster. Default to true. Then openapi in Alibaba Cloud are not all on intranet, So turn this option on is a good choice.
  final pulumi.Input<bool>? newNatGateway;
  /// The node cidr block to specific how many pods can run on single node. 24-28 is allowed. 24 means 2^(32-24)-1=255 and the node can run at most 255 pods. default: 24
  final pulumi.Input<int>? nodeCidrMask;
  /// The password of ssh login cluster node. You have to specify one of `password`, `key_name` `kms_encrypted_password` fields.
  final pulumi.Input<String>? password;
  /// [Flannel Specific] The CIDR block for the pod network when using Flannel.
  final pulumi.Input<String>? podCidr;
  /// Proxy mode is option of kube-proxy. options: iptables|ipvs. default: ipvs.
  final pulumi.Input<String>? proxyMode;
  /// RDS instance list, You can choose which RDS instances whitelist to add instances to.
  final pulumi.Input<List<String>>? rdsInstances;
  /// The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<List<String>>? retainResources;
  /// The runtime of containers. If you select another container runtime, see [Comparison of Docker, containerd, and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm). See `runtime` below.
  final pulumi.Input<EdgeKubernetesRuntime>? runtime;
  /// The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  final pulumi.Input<String>? securityGroupId;
  /// The CIDR block for the service network. It cannot be duplicated with the VPC CIDR and CIDR used by Kubernetes cluster in VPC, cannot be modified after creation.
  final pulumi.Input<String>? serviceCidr;
  /// Configure whether to save certificate authority data for your cluster to attribute `certificate_authority`. For cluster security, recommended configuration as `true`. Will be removed with attribute certificate_authority removed.
  ///
  /// *Network params*
  final pulumi.Input<bool>? skipSetCertificateAuthority;
  /// The public ip of load balancer.
  final pulumi.Input<String>? slbInternet;
  /// Whether to create internet load balancer for API Server. Default to true.
  final pulumi.Input<bool>? slbInternetEnabled;
  /// The ID of private load balancer where the current cluster master node is located.
  final pulumi.Input<String>? slbIntranet;
  /// Default nil, A map of tags assigned to the kubernetes cluster and work node.
  final pulumi.Input<Map<String, String>>? tags;
  /// Windows instances support batch and PowerShell scripts. If your script file is larger than 1 KB, we recommend that you upload the script to Object Storage Service (OSS) and pull it through the internal endpoint of your OSS bucket.
  final pulumi.Input<String>? userData;
  /// Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK.
  final pulumi.Input<String>? version;
  /// The ID of VPC where the current cluster is located.
  final pulumi.Input<String>? vpcId;
  /// The data disk configurations of worker nodes, such as the disk type and disk size. See `worker_data_disks` below.
  final pulumi.Input<List<EdgeKubernetesWorkerDataDisk>>? workerDataDisks;
  /// The system disk category of worker node. Its valid value are `cloud_efficiency`, `cloud_ssd` and `cloud_essd` and . Default to `cloud_efficiency`.
  final pulumi.Input<String>? workerDiskCategory;
  /// Worker node system disk performance level, when `worker_disk_category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  final pulumi.Input<String>? workerDiskPerformanceLevel;
  /// The system disk size of worker node. Its valid value range [20~32768] in GB. Default to 40.
  final pulumi.Input<int>? workerDiskSize;
  /// Worker node system disk auto snapshot policy.
  ///
  /// *Computed params*
  ///
  /// You can set some file paths to save kube_config information, but this way is cumbersome. Since version 1.105.0, we've written it to tf state file. About its use，see export attribute certificate_authority. From version 1.187.0+, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kube_config.
  final pulumi.Input<String>? workerDiskSnapshotPolicyId;
  /// Worker payment type, its valid value is `PostPaid`. Defaults to `PostPaid`. More charge details in [ACK@edge charge](https://help.aliyun.com/document_detail/178718.html).
  final pulumi.Input<String>? workerInstanceChargeType;
  /// The instance types of worker node, you can set multiple types to avoid NoStock of a certain type.
  final pulumi.Input<List<String>>? workerInstanceTypes;
  /// List of cluster worker nodes.
  final pulumi.Input<List<EdgeKubernetesWorkerNode>>? workerNodes;
  /// The cloud worker node number of the edge kubernetes cluster. Default to 1. It is limited up to 50 and if you want to enlarge it, please apply white list or contact with us.
  final pulumi.Input<int>? workerNumber;
  /// The RamRole Name attached to worker node.
  final pulumi.Input<String>? workerRamRoleName;
  /// The vswitches used by workers.
  final pulumi.Input<List<String>>? workerVswitchIds;

  /// Creates a new [EdgeKubernetesState].
  /// [addons] The addon you want to install in cluster. See `addons` below.
  /// [availabilityZone] The ID of availability zone.
  /// [certificateAuthority] (Map, Deprecated from v1.248.0) Nested attribute containing certificate authority data for your cluster. Please use the attribute certificate_authority of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  /// [clientCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  /// [clientKey] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  /// [clusterCaCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  /// [clusterSpec] The cluster specifications of kubernetes cluster,which can be empty. Valid values:
  /// [connections] (Map) Map of kubernetes cluster connection information.
  /// [deletionProtection] Whether to enable cluster deletion protection.
  /// [installCloudMonitor] Install cloud monitor agent on ECS. default: `true`.
  /// [isEnterpriseSecurityGroup] Enable to create advanced security group. default: false. See [Advanced security group](https://www.alibabacloud.com/help/doc-detail/120621.htm).
  /// [keyName] The keypair of ssh login cluster node, you have to create it first. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  /// [kubeConfig] The path of kube config, like ~/.kube/config. Please use the attribute output_file of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  /// [loadBalancerSpec] The cluster api server load balance instance specification. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html).
  /// [logConfig] A list of one element containing information about the associated log store. See `log_config` below.
  /// [name] The kubernetes cluster's name. It is unique in one Alicloud account.
  /// [namePrefix] Optional.
  /// [natGatewayId] The ID of nat gateway used to launch kubernetes cluster.
  /// [newNatGateway] Whether to create a new nat gateway while creating kubernetes cluster. Default to true. Then openapi in Alibaba Cloud are not all on intranet, So turn this option on is a good choice.
  /// [nodeCidrMask] The node cidr block to specific how many pods can run on single node. 24-28 is allowed. 24 means 2^(32-24)-1=255 and the node can run at most 255 pods. default: 24
  /// [password] The password of ssh login cluster node. You have to specify one of `password`, `key_name` `kms_encrypted_password` fields.
  /// [podCidr] [Flannel Specific] The CIDR block for the pod network when using Flannel.
  /// [proxyMode] Proxy mode is option of kube-proxy. options: iptables|ipvs. default: ipvs.
  /// [rdsInstances] RDS instance list, You can choose which RDS instances whitelist to add instances to.
  /// [resourceGroupId] The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  /// [retainResources] Optional.
  /// [runtime] The runtime of containers. If you select another container runtime, see [Comparison of Docker, containerd, and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm). See `runtime` below.
  /// [securityGroupId] The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  /// [serviceCidr] The CIDR block for the service network. It cannot be duplicated with the VPC CIDR and CIDR used by Kubernetes cluster in VPC, cannot be modified after creation.
  /// [skipSetCertificateAuthority] Configure whether to save certificate authority data for your cluster to attribute `certificate_authority`. For cluster security, recommended configuration as `true`. Will be removed with attribute certificate_authority removed.
  /// [slbInternet] The public ip of load balancer.
  /// [slbInternetEnabled] Whether to create internet load balancer for API Server. Default to true.
  /// [slbIntranet] The ID of private load balancer where the current cluster master node is located.
  /// [tags] Default nil, A map of tags assigned to the kubernetes cluster and work node.
  /// [userData] Windows instances support batch and PowerShell scripts. If your script file is larger than 1 KB, we recommend that you upload the script to Object Storage Service (OSS) and pull it through the internal endpoint of your OSS bucket.
  /// [version] Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK.
  /// [vpcId] The ID of VPC where the current cluster is located.
  /// [workerDataDisks] The data disk configurations of worker nodes, such as the disk type and disk size. See `worker_data_disks` below.
  /// [workerDiskCategory] The system disk category of worker node. Its valid value are `cloud_efficiency`, `cloud_ssd` and `cloud_essd` and . Default to `cloud_efficiency`.
  /// [workerDiskPerformanceLevel] Worker node system disk performance level, when `worker_disk_category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  /// [workerDiskSize] The system disk size of worker node. Its valid value range [20~32768] in GB. Default to 40.
  /// [workerDiskSnapshotPolicyId] Worker node system disk auto snapshot policy.
  /// [workerInstanceChargeType] Worker payment type, its valid value is `PostPaid`. Defaults to `PostPaid`. More charge details in [ACK@edge charge](https://help.aliyun.com/document_detail/178718.html).
  /// [workerInstanceTypes] The instance types of worker node, you can set multiple types to avoid NoStock of a certain type.
  /// [workerNodes] List of cluster worker nodes.
  /// [workerNumber] The cloud worker node number of the edge kubernetes cluster. Default to 1. It is limited up to 50 and if you want to enlarge it, please apply white list or contact with us.
  /// [workerRamRoleName] The RamRole Name attached to worker node.
  /// [workerVswitchIds] The vswitches used by workers.
  EdgeKubernetesState({
    pulumi.Output<List<EdgeKubernetesAddon>>? addons,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<EdgeKubernetesCertificateAuthority>? certificateAuthority,
    pulumi.Output<String>? clientCert,
    pulumi.Output<String>? clientKey,
    pulumi.Output<String>? clusterCaCert,
    pulumi.Output<String>? clusterSpec,
    pulumi.Output<EdgeKubernetesConnections>? connections,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<bool>? installCloudMonitor,
    pulumi.Output<bool>? isEnterpriseSecurityGroup,
    pulumi.Output<String>? keyName,
    pulumi.Output<String>? kubeConfig,
    pulumi.Output<String>? loadBalancerSpec,
    pulumi.Output<EdgeKubernetesLogConfig>? logConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? natGatewayId,
    pulumi.Output<bool>? newNatGateway,
    pulumi.Output<int>? nodeCidrMask,
    pulumi.Output<String>? password,
    pulumi.Output<String>? podCidr,
    pulumi.Output<String>? proxyMode,
    pulumi.Output<List<String>>? rdsInstances,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? retainResources,
    pulumi.Output<EdgeKubernetesRuntime>? runtime,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? serviceCidr,
    pulumi.Output<bool>? skipSetCertificateAuthority,
    pulumi.Output<String>? slbInternet,
    pulumi.Output<bool>? slbInternetEnabled,
    pulumi.Output<String>? slbIntranet,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? userData,
    pulumi.Output<String>? version,
    pulumi.Output<String>? vpcId,
    pulumi.Output<List<EdgeKubernetesWorkerDataDisk>>? workerDataDisks,
    pulumi.Output<String>? workerDiskCategory,
    pulumi.Output<String>? workerDiskPerformanceLevel,
    pulumi.Output<int>? workerDiskSize,
    pulumi.Output<String>? workerDiskSnapshotPolicyId,
    pulumi.Output<String>? workerInstanceChargeType,
    pulumi.Output<List<String>>? workerInstanceTypes,
    pulumi.Output<List<EdgeKubernetesWorkerNode>>? workerNodes,
    pulumi.Output<int>? workerNumber,
    pulumi.Output<String>? workerRamRoleName,
    pulumi.Output<List<String>>? workerVswitchIds,
  }) :
      addons = pulumi.Input.asOptionalInput<List<EdgeKubernetesAddon>>(addons),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      certificateAuthority = pulumi.Input.asOptionalInput<EdgeKubernetesCertificateAuthority>(certificateAuthority),
      clientCert = pulumi.Input.asOptionalInput<String>(clientCert),
      clientKey = pulumi.Input.asOptionalInput<String>(clientKey),
      clusterCaCert = pulumi.Input.asOptionalInput<String>(clusterCaCert),
      clusterSpec = pulumi.Input.asOptionalInput<String>(clusterSpec),
      connections = pulumi.Input.asOptionalInput<EdgeKubernetesConnections>(connections),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      installCloudMonitor = pulumi.Input.asOptionalInput<bool>(installCloudMonitor),
      isEnterpriseSecurityGroup = pulumi.Input.asOptionalInput<bool>(isEnterpriseSecurityGroup),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      kubeConfig = pulumi.Input.asOptionalInput<String>(kubeConfig),
      loadBalancerSpec = pulumi.Input.asOptionalInput<String>(loadBalancerSpec),
      logConfig = pulumi.Input.asOptionalInput<EdgeKubernetesLogConfig>(logConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
      newNatGateway = pulumi.Input.asOptionalInput<bool>(newNatGateway),
      nodeCidrMask = pulumi.Input.asOptionalInput<int>(nodeCidrMask),
      password = pulumi.Input.asOptionalInput<String>(password),
      podCidr = pulumi.Input.asOptionalInput<String>(podCidr),
      proxyMode = pulumi.Input.asOptionalInput<String>(proxyMode),
      rdsInstances = pulumi.Input.asOptionalInput<List<String>>(rdsInstances),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      retainResources = pulumi.Input.asOptionalInput<List<String>>(retainResources),
      runtime = pulumi.Input.asOptionalInput<EdgeKubernetesRuntime>(runtime),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      serviceCidr = pulumi.Input.asOptionalInput<String>(serviceCidr),
      skipSetCertificateAuthority = pulumi.Input.asOptionalInput<bool>(skipSetCertificateAuthority),
      slbInternet = pulumi.Input.asOptionalInput<String>(slbInternet),
      slbInternetEnabled = pulumi.Input.asOptionalInput<bool>(slbInternetEnabled),
      slbIntranet = pulumi.Input.asOptionalInput<String>(slbIntranet),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      version = pulumi.Input.asOptionalInput<String>(version),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      workerDataDisks = pulumi.Input.asOptionalInput<List<EdgeKubernetesWorkerDataDisk>>(workerDataDisks),
      workerDiskCategory = pulumi.Input.asOptionalInput<String>(workerDiskCategory),
      workerDiskPerformanceLevel = pulumi.Input.asOptionalInput<String>(workerDiskPerformanceLevel),
      workerDiskSize = pulumi.Input.asOptionalInput<int>(workerDiskSize),
      workerDiskSnapshotPolicyId = pulumi.Input.asOptionalInput<String>(workerDiskSnapshotPolicyId),
      workerInstanceChargeType = pulumi.Input.asOptionalInput<String>(workerInstanceChargeType),
      workerInstanceTypes = pulumi.Input.asOptionalInput<List<String>>(workerInstanceTypes),
      workerNodes = pulumi.Input.asOptionalInput<List<EdgeKubernetesWorkerNode>>(workerNodes),
      workerNumber = pulumi.Input.asOptionalInput<int>(workerNumber),
      workerRamRoleName = pulumi.Input.asOptionalInput<String>(workerRamRoleName),
      workerVswitchIds = pulumi.Input.asOptionalInput<List<String>>(workerVswitchIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addons': ?pulumi.Input.mapOptionalInputValue<List<EdgeKubernetesAddon>, List<Map<String, dynamic>>>(addons, (value) => pulumi.Input.encodeList<EdgeKubernetesAddon, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availabilityZone': ?availabilityZone,
      'certificateAuthority': ?pulumi.Input.mapOptionalInputValue<EdgeKubernetesCertificateAuthority, Map<String, dynamic>>(certificateAuthority, (value) => value.toMap()),
      'clientCert': ?clientCert,
      'clientKey': ?clientKey,
      'clusterCaCert': ?clusterCaCert,
      'clusterSpec': ?clusterSpec,
      'connections': ?pulumi.Input.mapOptionalInputValue<EdgeKubernetesConnections, Map<String, dynamic>>(connections, (value) => value.toMap()),
      'deletionProtection': ?deletionProtection,
      'installCloudMonitor': ?installCloudMonitor,
      'isEnterpriseSecurityGroup': ?isEnterpriseSecurityGroup,
      'keyName': ?keyName,
      'kubeConfig': ?kubeConfig,
      'loadBalancerSpec': ?loadBalancerSpec,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<EdgeKubernetesLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'natGatewayId': ?natGatewayId,
      'newNatGateway': ?newNatGateway,
      'nodeCidrMask': ?nodeCidrMask,
      'password': ?password,
      'podCidr': ?podCidr,
      'proxyMode': ?proxyMode,
      'rdsInstances': ?rdsInstances,
      'resourceGroupId': ?resourceGroupId,
      'retainResources': ?retainResources,
      'runtime': ?pulumi.Input.mapOptionalInputValue<EdgeKubernetesRuntime, Map<String, dynamic>>(runtime, (value) => value.toMap()),
      'securityGroupId': ?securityGroupId,
      'serviceCidr': ?serviceCidr,
      'skipSetCertificateAuthority': ?skipSetCertificateAuthority,
      'slbInternet': ?slbInternet,
      'slbInternetEnabled': ?slbInternetEnabled,
      'slbIntranet': ?slbIntranet,
      'tags': ?tags,
      'userData': ?userData,
      'version': ?version,
      'vpcId': ?vpcId,
      'workerDataDisks': ?pulumi.Input.mapOptionalInputValue<List<EdgeKubernetesWorkerDataDisk>, List<Map<String, dynamic>>>(workerDataDisks, (value) => pulumi.Input.encodeList<EdgeKubernetesWorkerDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workerDiskCategory': ?workerDiskCategory,
      'workerDiskPerformanceLevel': ?workerDiskPerformanceLevel,
      'workerDiskSize': ?workerDiskSize,
      'workerDiskSnapshotPolicyId': ?workerDiskSnapshotPolicyId,
      'workerInstanceChargeType': ?workerInstanceChargeType,
      'workerInstanceTypes': ?workerInstanceTypes,
      'workerNodes': ?pulumi.Input.mapOptionalInputValue<List<EdgeKubernetesWorkerNode>, List<Map<String, dynamic>>>(workerNodes, (value) => pulumi.Input.encodeList<EdgeKubernetesWorkerNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workerNumber': ?workerNumber,
      'workerRamRoleName': ?workerRamRoleName,
      'workerVswitchIds': ?workerVswitchIds,
    };
  }

  factory EdgeKubernetesState.fromMap(Map<String, dynamic> map) {
    return EdgeKubernetesState(
      addons: map['addons'] == null ? null : pulumi.Output.create<List<EdgeKubernetesAddon>>(pulumi.Input.decodeList<EdgeKubernetesAddon>(map['addons'], (value) => EdgeKubernetesAddon.fromMap((value as Map).cast<String, dynamic>()))),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      certificateAuthority: map['certificateAuthority'] == null ? null : pulumi.Output.create<EdgeKubernetesCertificateAuthority>(EdgeKubernetesCertificateAuthority.fromMap((map['certificateAuthority'] as Map).cast<String, dynamic>())),
      clientCert: map['clientCert'] == null ? null : pulumi.Output.create<String>(map['clientCert'] as String),
      clientKey: map['clientKey'] == null ? null : pulumi.Output.create<String>(map['clientKey'] as String),
      clusterCaCert: map['clusterCaCert'] == null ? null : pulumi.Output.create<String>(map['clusterCaCert'] as String),
      clusterSpec: map['clusterSpec'] == null ? null : pulumi.Output.create<String>(map['clusterSpec'] as String),
      connections: map['connections'] == null ? null : pulumi.Output.create<EdgeKubernetesConnections>(EdgeKubernetesConnections.fromMap((map['connections'] as Map).cast<String, dynamic>())),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      installCloudMonitor: map['installCloudMonitor'] == null ? null : pulumi.Output.create<bool>(map['installCloudMonitor'] as bool),
      isEnterpriseSecurityGroup: map['isEnterpriseSecurityGroup'] == null ? null : pulumi.Output.create<bool>(map['isEnterpriseSecurityGroup'] as bool),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      kubeConfig: map['kubeConfig'] == null ? null : pulumi.Output.create<String>(map['kubeConfig'] as String),
      loadBalancerSpec: map['loadBalancerSpec'] == null ? null : pulumi.Output.create<String>(map['loadBalancerSpec'] as String),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<EdgeKubernetesLogConfig>(EdgeKubernetesLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      natGatewayId: map['natGatewayId'] == null ? null : pulumi.Output.create<String>(map['natGatewayId'] as String),
      newNatGateway: map['newNatGateway'] == null ? null : pulumi.Output.create<bool>(map['newNatGateway'] as bool),
      nodeCidrMask: map['nodeCidrMask'] == null ? null : pulumi.Output.create<int>(map['nodeCidrMask'] as int),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      podCidr: map['podCidr'] == null ? null : pulumi.Output.create<String>(map['podCidr'] as String),
      proxyMode: map['proxyMode'] == null ? null : pulumi.Output.create<String>(map['proxyMode'] as String),
      rdsInstances: map['rdsInstances'] == null ? null : pulumi.Output.create<List<String>>((map['rdsInstances'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      retainResources: map['retainResources'] == null ? null : pulumi.Output.create<List<String>>((map['retainResources'] as List).cast<String>()),
      runtime: map['runtime'] == null ? null : pulumi.Output.create<EdgeKubernetesRuntime>(EdgeKubernetesRuntime.fromMap((map['runtime'] as Map).cast<String, dynamic>())),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      serviceCidr: map['serviceCidr'] == null ? null : pulumi.Output.create<String>(map['serviceCidr'] as String),
      skipSetCertificateAuthority: map['skipSetCertificateAuthority'] == null ? null : pulumi.Output.create<bool>(map['skipSetCertificateAuthority'] as bool),
      slbInternet: map['slbInternet'] == null ? null : pulumi.Output.create<String>(map['slbInternet'] as String),
      slbInternetEnabled: map['slbInternetEnabled'] == null ? null : pulumi.Output.create<bool>(map['slbInternetEnabled'] as bool),
      slbIntranet: map['slbIntranet'] == null ? null : pulumi.Output.create<String>(map['slbIntranet'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      workerDataDisks: map['workerDataDisks'] == null ? null : pulumi.Output.create<List<EdgeKubernetesWorkerDataDisk>>(pulumi.Input.decodeList<EdgeKubernetesWorkerDataDisk>(map['workerDataDisks'], (value) => EdgeKubernetesWorkerDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      workerDiskCategory: map['workerDiskCategory'] == null ? null : pulumi.Output.create<String>(map['workerDiskCategory'] as String),
      workerDiskPerformanceLevel: map['workerDiskPerformanceLevel'] == null ? null : pulumi.Output.create<String>(map['workerDiskPerformanceLevel'] as String),
      workerDiskSize: map['workerDiskSize'] == null ? null : pulumi.Output.create<int>(map['workerDiskSize'] as int),
      workerDiskSnapshotPolicyId: map['workerDiskSnapshotPolicyId'] == null ? null : pulumi.Output.create<String>(map['workerDiskSnapshotPolicyId'] as String),
      workerInstanceChargeType: map['workerInstanceChargeType'] == null ? null : pulumi.Output.create<String>(map['workerInstanceChargeType'] as String),
      workerInstanceTypes: map['workerInstanceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['workerInstanceTypes'] as List).cast<String>()),
      workerNodes: map['workerNodes'] == null ? null : pulumi.Output.create<List<EdgeKubernetesWorkerNode>>(pulumi.Input.decodeList<EdgeKubernetesWorkerNode>(map['workerNodes'], (value) => EdgeKubernetesWorkerNode.fromMap((value as Map).cast<String, dynamic>()))),
      workerNumber: map['workerNumber'] == null ? null : pulumi.Output.create<int>(map['workerNumber'] as int),
      workerRamRoleName: map['workerRamRoleName'] == null ? null : pulumi.Output.create<String>(map['workerRamRoleName'] as String),
      workerVswitchIds: map['workerVswitchIds'] == null ? null : pulumi.Output.create<List<String>>((map['workerVswitchIds'] as List).cast<String>()),
    );
  }
}

