// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_addon.dart';
import 'kubernetes_certificate_authority.dart';
import 'kubernetes_connections.dart';
import 'kubernetes_delete_option.dart';
import 'kubernetes_master_node.dart';
import 'kubernetes_runtime.dart';

/// Input properties used for looking up and filtering Kubernetes resources.
class KubernetesState {
  /// The addon you want to install in cluster. See `addons` below. Only works for **Create** Operation, use resource cs_kubernetes_addon to manage addons if cluster is created.
  final pulumi.Input<List<KubernetesAddon>>? addons;
  /// A list of API audiences for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm). Set this to `["https://kubernetes.default.svc"]` if you want to enable the Token Volume Projection feature requires specifying `service_account_issuer` as well. From cluster version 1.22+, Service Account Token Volume Projection will be enabled by default.
  final pulumi.Input<List<String>>? apiAudiences;
  /// (Map, Deprecated from v1.248.0) Nested attribute containing certificate authority data for your cluster. Please use the attribute certificate_authority of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  final pulumi.Input<KubernetesCertificateAuthority>? certificateAuthority;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  final pulumi.Input<String>? clientCert;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  final pulumi.Input<String>? clientKey;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  ///
  /// *Removed params*
  final pulumi.Input<String>? clusterCaCert;
  /// Cluster local domain name, Default to `cluster.local`. A domain name consists of one or more sections separated by a decimal point (.), each of which is up to 63 characters long, and can be lowercase, numerals, and underscores (-), and must be lowercase or numerals at the beginning and end.
  final pulumi.Input<String>? clusterDomain;
  /// (Map) Map of kubernetes cluster connection information.
  final pulumi.Input<KubernetesConnections>? connections;
  /// Customize the certificate SAN, multiple IP or domain names are separated by English commas (,).
  final pulumi.Input<String>? customSan;
  /// Delete options, only work for deleting resource. Make sure you have run `pulumi up` to make the configuration applied. See `delete_options` below.
  final pulumi.Input<List<KubernetesDeleteOption>>? deleteOptions;
  /// Whether to enable cluster deletion protection.
  final pulumi.Input<bool>? deletionProtection;
  /// Enable login to the node through SSH. Default to `false`.
  final pulumi.Input<bool>? enableSsh;
  /// Custom Image support. Must be based on AliyunLinux or AliyunLinux3.
  final pulumi.Input<String>? imageId;
  /// Install cloud monitor agent on ECS. Default to `true`.
  final pulumi.Input<bool>? installCloudMonitor;
  /// Enable to create advanced security group. default: false. See [Advanced security group](https://www.alibabacloud.com/help/doc-detail/120621.htm). Only works for **Create** Operation.
  final pulumi.Input<bool>? isEnterpriseSecurityGroup;
  /// The keypair of ssh login cluster node, you have to create it first. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  final pulumi.Input<String>? keyName;
  /// An KMS encrypts password used to a cs kubernetes. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a cs kubernetes with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;
  /// The cluster api server load balancer instance specification. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html). Only works for **Create** Operation. The spec will not take effect because the charge of the load balancer has been changed to PayByCLCU.
  final pulumi.Input<String>? loadBalancerSpec;
  /// Enable master payment auto-renew, defaults to false.
  final pulumi.Input<bool>? masterAutoRenew;
  /// Master payment auto-renew period, it can be one of {1, 2, 3, 6, 12}.
  final pulumi.Input<int>? masterAutoRenewPeriod;
  /// The system disk category of master node. Its valid value are `cloud_ssd`, `cloud_essd` and `cloud_efficiency`. Default to `cloud_efficiency`.
  final pulumi.Input<String>? masterDiskCategory;
  /// Master node system disk performance level. When `master_disk_category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  final pulumi.Input<String>? masterDiskPerformanceLevel;
  /// The system disk size of master node. Its valid value range [20~500] in GB. Default to 20.
  final pulumi.Input<int>? masterDiskSize;
  /// Master node system disk auto snapshot policy.
  ///
  /// *Computed params*
  final pulumi.Input<String>? masterDiskSnapshotPolicyId;
  /// Master payment type. or `PostPaid` or `PrePaid`, defaults to `PostPaid`. If value is `PrePaid`, the files `master_period`, `master_period_unit`, `master_auto_renew` and `master_auto_renew_period` are required.
  final pulumi.Input<String>? masterInstanceChargeType;
  /// The instance type of master node. Specify one type for single AZ Cluster, three types for MultiAZ Cluster.
  final pulumi.Input<List<String>>? masterInstanceTypes;
  /// (Optional) The master nodes. See `master_nodes` below.
  final pulumi.Input<List<KubernetesMasterNode>>? masterNodes;
  /// Master payment period.Its valid value is one of {1, 2, 3, 6, 12, 24, 36, 48, 60}.
  final pulumi.Input<int>? masterPeriod;
  /// Master payment period unit, the valid value is `Month`.
  final pulumi.Input<String>? masterPeriodUnit;
  /// The vswitches used by master, you can specific 3 or 5 vswitches because of the amount of masters. Detailed below.
  final pulumi.Input<List<String>>? masterVswitchIds;
  /// The kubernetes cluster's name. It is unique in one Alicloud account.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? namePrefix;
  /// The ID of nat gateway used to launch kubernetes cluster.
  final pulumi.Input<String>? natGatewayId;
  /// Whether to create a new nat gateway while creating kubernetes cluster. Default to true. Then openapi in Alibaba Cloud are not all on intranet, So turn this option on is a good choice. Your cluster nodes and applications will have public network access. If there is a NAT gateway in the selected VPC, ACK will use this gateway by default; if there is no NAT gateway in the selected VPC, ACK will create a new NAT gateway for you and automatically configure SNAT rules. Only works for **Create** Operation.
  final pulumi.Input<bool>? newNatGateway;
  /// The node cidr block to specific how many pods can run on single node. 24-28 is allowed. 24 means 2^(32-24)-1=255 and the node can run at most 255 pods. default: 24
  final pulumi.Input<int>? nodeCidrMask;
  /// Each node name consists of a prefix, an IP substring, and a suffix, the input format is `customized,<prefix>,IPSubStringLen,<suffix>`. For example "customized,aliyun.com-,5,-test", if the node IP address is 192.168.59.176, the prefix is aliyun.com-, IP substring length is 5, and the suffix is -test, the node name will be aliyun.com-59176-test.
  final pulumi.Input<String>? nodeNameMode;
  /// The operating system of the nodes that run pods, its valid value is either `Linux` or `Windows`. Default to `Linux`.
  final pulumi.Input<String>? osType;
  /// The password of ssh login cluster node. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  final pulumi.Input<String>? password;
  /// The architecture of the nodes that run pods, its valid value `AliyunLinux`, `AliyunLinux3`. Default to `AliyunLinux3`.
  final pulumi.Input<String>? platform;
  /// [Flannel Specific] The CIDR block for the pod network when using Flannel.
  final pulumi.Input<String>? podCidr;
  /// [Terway Specific] The vswitches for the pod network when using Terway. It is recommended that `pod_vswitch_ids` is not belong to `worker_vswitch_ids` and `master_vswitch_ids` but must be in same availability zones. Only works for **Create** Operation.
  final pulumi.Input<List<String>>? podVswitchIds;
  /// Proxy mode is option of kube-proxy. options: iptables | ipvs. default: ipvs.
  final pulumi.Input<String>? proxyMode;
  /// RDS instance list, You can choose which RDS instances whitelist to add instances to.
  final pulumi.Input<List<String>>? rdsInstances;
  /// The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<List<String>>? retainResources;
  /// The runtime of containers. If you select another container runtime, see [How do I select between Docker and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm?spm=a2c63.p38356.b99.440.22563866AJkBgI). See `runtime` below.
  final pulumi.Input<KubernetesRuntime>? runtime;
  /// The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  final pulumi.Input<String>? securityGroupId;
  /// The issuer of the Service Account token for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm), corresponds to the `iss` field in the token payload. Set this to `"https://kubernetes.default.svc"` to enable the Token Volume Projection feature (requires specifying `api_audiences` as well). From cluster version 1.22+, Service Account Token Volume Projection will be enabled by default.
  final pulumi.Input<String>? serviceAccountIssuer;
  /// The CIDR block for the service network. It cannot be duplicated with the VPC CIDR and CIDR used by Kubernetes cluster in VPC, cannot be modified after creation.
  final pulumi.Input<String>? serviceCidr;
  /// Configure whether to save certificate authority data for your cluster to attribute `certificate_authority`.For cluster security, recommended configuration as `true`. Will be removed with attribute certificate_authority removed.
  ///
  /// *Network params*
  final pulumi.Input<bool>? skipSetCertificateAuthority;
  /// The ID of APIServer load balancer.
  final pulumi.Input<String>? slbId;
  /// The public ip of load balancer.
  final pulumi.Input<String>? slbInternet;
  /// Whether to create internet load balancer for API Server. Default to true. Only works for **Create** Operation.
  ///
  /// > **NOTE:** If you want to use `Terway` as CNI network plugin, You need to specify the `pod_vswitch_ids` field and addons with `terway-eniip`.
  /// If you want to use `Flannel` as CNI network plugin, You need to specify the `pod_cidr` field and addons with `flannel`.
  ///
  /// *Master params*
  final pulumi.Input<bool>? slbInternetEnabled;
  /// The ID of private load balancer where the current cluster master node is located.
  final pulumi.Input<String>? slbIntranet;
  /// Default nil, A map of tags assigned to the kubernetes cluster and work nodes.
  final pulumi.Input<Map<String, String>>? tags;
  /// When you create a cluster, set the time zones for the Master and Worker nodes. You can only change the managed node time zone if you create a cluster. Once the cluster is created, you can only change the time zone of the Worker node.
  final pulumi.Input<String>? timezone;
  /// The path of customized CA cert, you can use this CA to sign client certs to connect your cluster.
  final pulumi.Input<String>? userCa;
  /// Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK.
  final pulumi.Input<String>? version;
  /// The ID of VPC where the current cluster is located.
  final pulumi.Input<String>? vpcId;
  /// The RamRole Name attached to worker node.
  final pulumi.Input<String>? workerRamRoleName;

  /// Creates a new [KubernetesState].
  /// [addons] The addon you want to install in cluster. See `addons` below. Only works for **Create** Operation, use resource cs_kubernetes_addon to manage addons if cluster is created.
  /// [apiAudiences] A list of API audiences for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm). Set this to `["https://kubernetes.default.svc"]` if you want to enable the Token Volume Projection feature requires specifying `service_account_issuer` as well. From cluster version 1.22+, Service Account Token Volume Projection will be enabled by default.
  /// [certificateAuthority] (Map, Deprecated from v1.248.0) Nested attribute containing certificate authority data for your cluster. Please use the attribute certificate_authority of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  /// [clientCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  /// [clientKey] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  /// [clusterCaCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  /// [clusterDomain] Cluster local domain name, Default to `cluster.local`. A domain name consists of one or more sections separated by a decimal point (.), each of which is up to 63 characters long, and can be lowercase, numerals, and underscores (-), and must be lowercase or numerals at the beginning and end.
  /// [connections] (Map) Map of kubernetes cluster connection information.
  /// [customSan] Customize the certificate SAN, multiple IP or domain names are separated by English commas (,).
  /// [deleteOptions] Delete options, only work for deleting resource. Make sure you have run `pulumi up` to make the configuration applied. See `delete_options` below.
  /// [deletionProtection] Whether to enable cluster deletion protection.
  /// [enableSsh] Enable login to the node through SSH. Default to `false`.
  /// [imageId] Custom Image support. Must be based on AliyunLinux or AliyunLinux3.
  /// [installCloudMonitor] Install cloud monitor agent on ECS. Default to `true`.
  /// [isEnterpriseSecurityGroup] Enable to create advanced security group. default: false. See [Advanced security group](https://www.alibabacloud.com/help/doc-detail/120621.htm). Only works for **Create** Operation.
  /// [keyName] The keypair of ssh login cluster node, you have to create it first. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  /// [kmsEncryptedPassword] An KMS encrypts password used to a cs kubernetes. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a cs kubernetes with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [loadBalancerSpec] The cluster api server load balancer instance specification. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html). Only works for **Create** Operation. The spec will not take effect because the charge of the load balancer has been changed to PayByCLCU.
  /// [masterAutoRenew] Enable master payment auto-renew, defaults to false.
  /// [masterAutoRenewPeriod] Master payment auto-renew period, it can be one of {1, 2, 3, 6, 12}.
  /// [masterDiskCategory] The system disk category of master node. Its valid value are `cloud_ssd`, `cloud_essd` and `cloud_efficiency`. Default to `cloud_efficiency`.
  /// [masterDiskPerformanceLevel] Master node system disk performance level. When `master_disk_category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  /// [masterDiskSize] The system disk size of master node. Its valid value range [20~500] in GB. Default to 20.
  /// [masterDiskSnapshotPolicyId] Master node system disk auto snapshot policy.
  /// [masterInstanceChargeType] Master payment type. or `PostPaid` or `PrePaid`, defaults to `PostPaid`. If value is `PrePaid`, the files `master_period`, `master_period_unit`, `master_auto_renew` and `master_auto_renew_period` are required.
  /// [masterInstanceTypes] The instance type of master node. Specify one type for single AZ Cluster, three types for MultiAZ Cluster.
  /// [masterNodes] (Optional) The master nodes. See `master_nodes` below.
  /// [masterPeriod] Master payment period.Its valid value is one of {1, 2, 3, 6, 12, 24, 36, 48, 60}.
  /// [masterPeriodUnit] Master payment period unit, the valid value is `Month`.
  /// [masterVswitchIds] The vswitches used by master, you can specific 3 or 5 vswitches because of the amount of masters. Detailed below.
  /// [name] The kubernetes cluster's name. It is unique in one Alicloud account.
  /// [namePrefix] Optional.
  /// [natGatewayId] The ID of nat gateway used to launch kubernetes cluster.
  /// [newNatGateway] Whether to create a new nat gateway while creating kubernetes cluster. Default to true. Then openapi in Alibaba Cloud are not all on intranet, So turn this option on is a good choice. Your cluster nodes and applications will have public network access. If there is a NAT gateway in the selected VPC, ACK will use this gateway by default; if there is no NAT gateway in the selected VPC, ACK will create a new NAT gateway for you and automatically configure SNAT rules. Only works for **Create** Operation.
  /// [nodeCidrMask] The node cidr block to specific how many pods can run on single node. 24-28 is allowed. 24 means 2^(32-24)-1=255 and the node can run at most 255 pods. default: 24
  /// [nodeNameMode] Each node name consists of a prefix, an IP substring, and a suffix, the input format is `customized,<prefix>,IPSubStringLen,<suffix>`. For example "customized,aliyun.com-,5,-test", if the node IP address is 192.168.59.176, the prefix is aliyun.com-, IP substring length is 5, and the suffix is -test, the node name will be aliyun.com-59176-test.
  /// [osType] The operating system of the nodes that run pods, its valid value is either `Linux` or `Windows`. Default to `Linux`.
  /// [password] The password of ssh login cluster node. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  /// [platform] The architecture of the nodes that run pods, its valid value `AliyunLinux`, `AliyunLinux3`. Default to `AliyunLinux3`.
  /// [podCidr] [Flannel Specific] The CIDR block for the pod network when using Flannel.
  /// [podVswitchIds] [Terway Specific] The vswitches for the pod network when using Terway. It is recommended that `pod_vswitch_ids` is not belong to `worker_vswitch_ids` and `master_vswitch_ids` but must be in same availability zones. Only works for **Create** Operation.
  /// [proxyMode] Proxy mode is option of kube-proxy. options: iptables | ipvs. default: ipvs.
  /// [rdsInstances] RDS instance list, You can choose which RDS instances whitelist to add instances to.
  /// [resourceGroupId] The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  /// [retainResources] Optional.
  /// [runtime] The runtime of containers. If you select another container runtime, see [How do I select between Docker and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm?spm=a2c63.p38356.b99.440.22563866AJkBgI). See `runtime` below.
  /// [securityGroupId] The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  /// [serviceAccountIssuer] The issuer of the Service Account token for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm), corresponds to the `iss` field in the token payload. Set this to `"https://kubernetes.default.svc"` to enable the Token Volume Projection feature (requires specifying `api_audiences` as well). From cluster version 1.22+, Service Account Token Volume Projection will be enabled by default.
  /// [serviceCidr] The CIDR block for the service network. It cannot be duplicated with the VPC CIDR and CIDR used by Kubernetes cluster in VPC, cannot be modified after creation.
  /// [skipSetCertificateAuthority] Configure whether to save certificate authority data for your cluster to attribute `certificate_authority`.For cluster security, recommended configuration as `true`. Will be removed with attribute certificate_authority removed.
  /// [slbId] The ID of APIServer load balancer.
  /// [slbInternet] The public ip of load balancer.
  /// [slbInternetEnabled] Whether to create internet load balancer for API Server. Default to true. Only works for **Create** Operation.
  /// [slbIntranet] The ID of private load balancer where the current cluster master node is located.
  /// [tags] Default nil, A map of tags assigned to the kubernetes cluster and work nodes.
  /// [timezone] When you create a cluster, set the time zones for the Master and Worker nodes. You can only change the managed node time zone if you create a cluster. Once the cluster is created, you can only change the time zone of the Worker node.
  /// [userCa] The path of customized CA cert, you can use this CA to sign client certs to connect your cluster.
  /// [version] Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK.
  /// [vpcId] The ID of VPC where the current cluster is located.
  /// [workerRamRoleName] The RamRole Name attached to worker node.
  KubernetesState({
    pulumi.Output<List<KubernetesAddon>>? addons,
    pulumi.Output<List<String>>? apiAudiences,
    pulumi.Output<KubernetesCertificateAuthority>? certificateAuthority,
    pulumi.Output<String>? clientCert,
    pulumi.Output<String>? clientKey,
    pulumi.Output<String>? clusterCaCert,
    pulumi.Output<String>? clusterDomain,
    pulumi.Output<KubernetesConnections>? connections,
    pulumi.Output<String>? customSan,
    pulumi.Output<List<KubernetesDeleteOption>>? deleteOptions,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<bool>? enableSsh,
    pulumi.Output<String>? imageId,
    pulumi.Output<bool>? installCloudMonitor,
    pulumi.Output<bool>? isEnterpriseSecurityGroup,
    pulumi.Output<String>? keyName,
    pulumi.Output<String>? kmsEncryptedPassword,
    pulumi.Output<Map<String, String>>? kmsEncryptionContext,
    pulumi.Output<String>? loadBalancerSpec,
    pulumi.Output<bool>? masterAutoRenew,
    pulumi.Output<int>? masterAutoRenewPeriod,
    pulumi.Output<String>? masterDiskCategory,
    pulumi.Output<String>? masterDiskPerformanceLevel,
    pulumi.Output<int>? masterDiskSize,
    pulumi.Output<String>? masterDiskSnapshotPolicyId,
    pulumi.Output<String>? masterInstanceChargeType,
    pulumi.Output<List<String>>? masterInstanceTypes,
    pulumi.Output<List<KubernetesMasterNode>>? masterNodes,
    pulumi.Output<int>? masterPeriod,
    pulumi.Output<String>? masterPeriodUnit,
    pulumi.Output<List<String>>? masterVswitchIds,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? natGatewayId,
    pulumi.Output<bool>? newNatGateway,
    pulumi.Output<int>? nodeCidrMask,
    pulumi.Output<String>? nodeNameMode,
    pulumi.Output<String>? osType,
    pulumi.Output<String>? password,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? podCidr,
    pulumi.Output<List<String>>? podVswitchIds,
    pulumi.Output<String>? proxyMode,
    pulumi.Output<List<String>>? rdsInstances,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? retainResources,
    pulumi.Output<KubernetesRuntime>? runtime,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? serviceAccountIssuer,
    pulumi.Output<String>? serviceCidr,
    pulumi.Output<bool>? skipSetCertificateAuthority,
    pulumi.Output<String>? slbId,
    pulumi.Output<String>? slbInternet,
    pulumi.Output<bool>? slbInternetEnabled,
    pulumi.Output<String>? slbIntranet,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? timezone,
    pulumi.Output<String>? userCa,
    pulumi.Output<String>? version,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? workerRamRoleName,
  }) :
      addons = pulumi.Input.asOptionalInput<List<KubernetesAddon>>(addons),
      apiAudiences = pulumi.Input.asOptionalInput<List<String>>(apiAudiences),
      certificateAuthority = pulumi.Input.asOptionalInput<KubernetesCertificateAuthority>(certificateAuthority),
      clientCert = pulumi.Input.asOptionalInput<String>(clientCert),
      clientKey = pulumi.Input.asOptionalInput<String>(clientKey),
      clusterCaCert = pulumi.Input.asOptionalInput<String>(clusterCaCert),
      clusterDomain = pulumi.Input.asOptionalInput<String>(clusterDomain),
      connections = pulumi.Input.asOptionalInput<KubernetesConnections>(connections),
      customSan = pulumi.Input.asOptionalInput<String>(customSan),
      deleteOptions = pulumi.Input.asOptionalInput<List<KubernetesDeleteOption>>(deleteOptions),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      enableSsh = pulumi.Input.asOptionalInput<bool>(enableSsh),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      installCloudMonitor = pulumi.Input.asOptionalInput<bool>(installCloudMonitor),
      isEnterpriseSecurityGroup = pulumi.Input.asOptionalInput<bool>(isEnterpriseSecurityGroup),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      kmsEncryptedPassword = pulumi.Input.asOptionalInput<String>(kmsEncryptedPassword),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionContext),
      loadBalancerSpec = pulumi.Input.asOptionalInput<String>(loadBalancerSpec),
      masterAutoRenew = pulumi.Input.asOptionalInput<bool>(masterAutoRenew),
      masterAutoRenewPeriod = pulumi.Input.asOptionalInput<int>(masterAutoRenewPeriod),
      masterDiskCategory = pulumi.Input.asOptionalInput<String>(masterDiskCategory),
      masterDiskPerformanceLevel = pulumi.Input.asOptionalInput<String>(masterDiskPerformanceLevel),
      masterDiskSize = pulumi.Input.asOptionalInput<int>(masterDiskSize),
      masterDiskSnapshotPolicyId = pulumi.Input.asOptionalInput<String>(masterDiskSnapshotPolicyId),
      masterInstanceChargeType = pulumi.Input.asOptionalInput<String>(masterInstanceChargeType),
      masterInstanceTypes = pulumi.Input.asOptionalInput<List<String>>(masterInstanceTypes),
      masterNodes = pulumi.Input.asOptionalInput<List<KubernetesMasterNode>>(masterNodes),
      masterPeriod = pulumi.Input.asOptionalInput<int>(masterPeriod),
      masterPeriodUnit = pulumi.Input.asOptionalInput<String>(masterPeriodUnit),
      masterVswitchIds = pulumi.Input.asOptionalInput<List<String>>(masterVswitchIds),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
      newNatGateway = pulumi.Input.asOptionalInput<bool>(newNatGateway),
      nodeCidrMask = pulumi.Input.asOptionalInput<int>(nodeCidrMask),
      nodeNameMode = pulumi.Input.asOptionalInput<String>(nodeNameMode),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      password = pulumi.Input.asOptionalInput<String>(password),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      podCidr = pulumi.Input.asOptionalInput<String>(podCidr),
      podVswitchIds = pulumi.Input.asOptionalInput<List<String>>(podVswitchIds),
      proxyMode = pulumi.Input.asOptionalInput<String>(proxyMode),
      rdsInstances = pulumi.Input.asOptionalInput<List<String>>(rdsInstances),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      retainResources = pulumi.Input.asOptionalInput<List<String>>(retainResources),
      runtime = pulumi.Input.asOptionalInput<KubernetesRuntime>(runtime),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      serviceAccountIssuer = pulumi.Input.asOptionalInput<String>(serviceAccountIssuer),
      serviceCidr = pulumi.Input.asOptionalInput<String>(serviceCidr),
      skipSetCertificateAuthority = pulumi.Input.asOptionalInput<bool>(skipSetCertificateAuthority),
      slbId = pulumi.Input.asOptionalInput<String>(slbId),
      slbInternet = pulumi.Input.asOptionalInput<String>(slbInternet),
      slbInternetEnabled = pulumi.Input.asOptionalInput<bool>(slbInternetEnabled),
      slbIntranet = pulumi.Input.asOptionalInput<String>(slbIntranet),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timezone = pulumi.Input.asOptionalInput<String>(timezone),
      userCa = pulumi.Input.asOptionalInput<String>(userCa),
      version = pulumi.Input.asOptionalInput<String>(version),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      workerRamRoleName = pulumi.Input.asOptionalInput<String>(workerRamRoleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addons': ?pulumi.Input.mapOptionalInputValue<List<KubernetesAddon>, List<Map<String, dynamic>>>(addons, (value) => pulumi.Input.encodeList<KubernetesAddon, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiAudiences': ?apiAudiences,
      'certificateAuthority': ?pulumi.Input.mapOptionalInputValue<KubernetesCertificateAuthority, Map<String, dynamic>>(certificateAuthority, (value) => value.toMap()),
      'clientCert': ?clientCert,
      'clientKey': ?clientKey,
      'clusterCaCert': ?clusterCaCert,
      'clusterDomain': ?clusterDomain,
      'connections': ?pulumi.Input.mapOptionalInputValue<KubernetesConnections, Map<String, dynamic>>(connections, (value) => value.toMap()),
      'customSan': ?customSan,
      'deleteOptions': ?pulumi.Input.mapOptionalInputValue<List<KubernetesDeleteOption>, List<Map<String, dynamic>>>(deleteOptions, (value) => pulumi.Input.encodeList<KubernetesDeleteOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionProtection': ?deletionProtection,
      'enableSsh': ?enableSsh,
      'imageId': ?imageId,
      'installCloudMonitor': ?installCloudMonitor,
      'isEnterpriseSecurityGroup': ?isEnterpriseSecurityGroup,
      'keyName': ?keyName,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'loadBalancerSpec': ?loadBalancerSpec,
      'masterAutoRenew': ?masterAutoRenew,
      'masterAutoRenewPeriod': ?masterAutoRenewPeriod,
      'masterDiskCategory': ?masterDiskCategory,
      'masterDiskPerformanceLevel': ?masterDiskPerformanceLevel,
      'masterDiskSize': ?masterDiskSize,
      'masterDiskSnapshotPolicyId': ?masterDiskSnapshotPolicyId,
      'masterInstanceChargeType': ?masterInstanceChargeType,
      'masterInstanceTypes': ?masterInstanceTypes,
      'masterNodes': ?pulumi.Input.mapOptionalInputValue<List<KubernetesMasterNode>, List<Map<String, dynamic>>>(masterNodes, (value) => pulumi.Input.encodeList<KubernetesMasterNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'masterPeriod': ?masterPeriod,
      'masterPeriodUnit': ?masterPeriodUnit,
      'masterVswitchIds': ?masterVswitchIds,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'natGatewayId': ?natGatewayId,
      'newNatGateway': ?newNatGateway,
      'nodeCidrMask': ?nodeCidrMask,
      'nodeNameMode': ?nodeNameMode,
      'osType': ?osType,
      'password': ?password,
      'platform': ?platform,
      'podCidr': ?podCidr,
      'podVswitchIds': ?podVswitchIds,
      'proxyMode': ?proxyMode,
      'rdsInstances': ?rdsInstances,
      'resourceGroupId': ?resourceGroupId,
      'retainResources': ?retainResources,
      'runtime': ?pulumi.Input.mapOptionalInputValue<KubernetesRuntime, Map<String, dynamic>>(runtime, (value) => value.toMap()),
      'securityGroupId': ?securityGroupId,
      'serviceAccountIssuer': ?serviceAccountIssuer,
      'serviceCidr': ?serviceCidr,
      'skipSetCertificateAuthority': ?skipSetCertificateAuthority,
      'slbId': ?slbId,
      'slbInternet': ?slbInternet,
      'slbInternetEnabled': ?slbInternetEnabled,
      'slbIntranet': ?slbIntranet,
      'tags': ?tags,
      'timezone': ?timezone,
      'userCa': ?userCa,
      'version': ?version,
      'vpcId': ?vpcId,
      'workerRamRoleName': ?workerRamRoleName,
    };
  }

  factory KubernetesState.fromMap(Map<String, dynamic> map) {
    return KubernetesState(
      addons: map['addons'] == null ? null : pulumi.Output.create<List<KubernetesAddon>>(pulumi.Input.decodeList<KubernetesAddon>(map['addons'], (value) => KubernetesAddon.fromMap((value as Map).cast<String, dynamic>()))),
      apiAudiences: map['apiAudiences'] == null ? null : pulumi.Output.create<List<String>>((map['apiAudiences'] as List).cast<String>()),
      certificateAuthority: map['certificateAuthority'] == null ? null : pulumi.Output.create<KubernetesCertificateAuthority>(KubernetesCertificateAuthority.fromMap((map['certificateAuthority'] as Map).cast<String, dynamic>())),
      clientCert: map['clientCert'] == null ? null : pulumi.Output.create<String>(map['clientCert'] as String),
      clientKey: map['clientKey'] == null ? null : pulumi.Output.create<String>(map['clientKey'] as String),
      clusterCaCert: map['clusterCaCert'] == null ? null : pulumi.Output.create<String>(map['clusterCaCert'] as String),
      clusterDomain: map['clusterDomain'] == null ? null : pulumi.Output.create<String>(map['clusterDomain'] as String),
      connections: map['connections'] == null ? null : pulumi.Output.create<KubernetesConnections>(KubernetesConnections.fromMap((map['connections'] as Map).cast<String, dynamic>())),
      customSan: map['customSan'] == null ? null : pulumi.Output.create<String>(map['customSan'] as String),
      deleteOptions: map['deleteOptions'] == null ? null : pulumi.Output.create<List<KubernetesDeleteOption>>(pulumi.Input.decodeList<KubernetesDeleteOption>(map['deleteOptions'], (value) => KubernetesDeleteOption.fromMap((value as Map).cast<String, dynamic>()))),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      enableSsh: map['enableSsh'] == null ? null : pulumi.Output.create<bool>(map['enableSsh'] as bool),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      installCloudMonitor: map['installCloudMonitor'] == null ? null : pulumi.Output.create<bool>(map['installCloudMonitor'] as bool),
      isEnterpriseSecurityGroup: map['isEnterpriseSecurityGroup'] == null ? null : pulumi.Output.create<bool>(map['isEnterpriseSecurityGroup'] as bool),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : pulumi.Output.create<String>(map['kmsEncryptedPassword'] as String),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['kmsEncryptionContext'] as Map).cast<String, String>()),
      loadBalancerSpec: map['loadBalancerSpec'] == null ? null : pulumi.Output.create<String>(map['loadBalancerSpec'] as String),
      masterAutoRenew: map['masterAutoRenew'] == null ? null : pulumi.Output.create<bool>(map['masterAutoRenew'] as bool),
      masterAutoRenewPeriod: map['masterAutoRenewPeriod'] == null ? null : pulumi.Output.create<int>(map['masterAutoRenewPeriod'] as int),
      masterDiskCategory: map['masterDiskCategory'] == null ? null : pulumi.Output.create<String>(map['masterDiskCategory'] as String),
      masterDiskPerformanceLevel: map['masterDiskPerformanceLevel'] == null ? null : pulumi.Output.create<String>(map['masterDiskPerformanceLevel'] as String),
      masterDiskSize: map['masterDiskSize'] == null ? null : pulumi.Output.create<int>(map['masterDiskSize'] as int),
      masterDiskSnapshotPolicyId: map['masterDiskSnapshotPolicyId'] == null ? null : pulumi.Output.create<String>(map['masterDiskSnapshotPolicyId'] as String),
      masterInstanceChargeType: map['masterInstanceChargeType'] == null ? null : pulumi.Output.create<String>(map['masterInstanceChargeType'] as String),
      masterInstanceTypes: map['masterInstanceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['masterInstanceTypes'] as List).cast<String>()),
      masterNodes: map['masterNodes'] == null ? null : pulumi.Output.create<List<KubernetesMasterNode>>(pulumi.Input.decodeList<KubernetesMasterNode>(map['masterNodes'], (value) => KubernetesMasterNode.fromMap((value as Map).cast<String, dynamic>()))),
      masterPeriod: map['masterPeriod'] == null ? null : pulumi.Output.create<int>(map['masterPeriod'] as int),
      masterPeriodUnit: map['masterPeriodUnit'] == null ? null : pulumi.Output.create<String>(map['masterPeriodUnit'] as String),
      masterVswitchIds: map['masterVswitchIds'] == null ? null : pulumi.Output.create<List<String>>((map['masterVswitchIds'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      natGatewayId: map['natGatewayId'] == null ? null : pulumi.Output.create<String>(map['natGatewayId'] as String),
      newNatGateway: map['newNatGateway'] == null ? null : pulumi.Output.create<bool>(map['newNatGateway'] as bool),
      nodeCidrMask: map['nodeCidrMask'] == null ? null : pulumi.Output.create<int>(map['nodeCidrMask'] as int),
      nodeNameMode: map['nodeNameMode'] == null ? null : pulumi.Output.create<String>(map['nodeNameMode'] as String),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      podCidr: map['podCidr'] == null ? null : pulumi.Output.create<String>(map['podCidr'] as String),
      podVswitchIds: map['podVswitchIds'] == null ? null : pulumi.Output.create<List<String>>((map['podVswitchIds'] as List).cast<String>()),
      proxyMode: map['proxyMode'] == null ? null : pulumi.Output.create<String>(map['proxyMode'] as String),
      rdsInstances: map['rdsInstances'] == null ? null : pulumi.Output.create<List<String>>((map['rdsInstances'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      retainResources: map['retainResources'] == null ? null : pulumi.Output.create<List<String>>((map['retainResources'] as List).cast<String>()),
      runtime: map['runtime'] == null ? null : pulumi.Output.create<KubernetesRuntime>(KubernetesRuntime.fromMap((map['runtime'] as Map).cast<String, dynamic>())),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      serviceAccountIssuer: map['serviceAccountIssuer'] == null ? null : pulumi.Output.create<String>(map['serviceAccountIssuer'] as String),
      serviceCidr: map['serviceCidr'] == null ? null : pulumi.Output.create<String>(map['serviceCidr'] as String),
      skipSetCertificateAuthority: map['skipSetCertificateAuthority'] == null ? null : pulumi.Output.create<bool>(map['skipSetCertificateAuthority'] as bool),
      slbId: map['slbId'] == null ? null : pulumi.Output.create<String>(map['slbId'] as String),
      slbInternet: map['slbInternet'] == null ? null : pulumi.Output.create<String>(map['slbInternet'] as String),
      slbInternetEnabled: map['slbInternetEnabled'] == null ? null : pulumi.Output.create<bool>(map['slbInternetEnabled'] as bool),
      slbIntranet: map['slbIntranet'] == null ? null : pulumi.Output.create<String>(map['slbIntranet'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timezone: map['timezone'] == null ? null : pulumi.Output.create<String>(map['timezone'] as String),
      userCa: map['userCa'] == null ? null : pulumi.Output.create<String>(map['userCa'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      workerRamRoleName: map['workerRamRoleName'] == null ? null : pulumi.Output.create<String>(map['workerRamRoleName'] as String),
    );
  }
}

