// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_addon.dart';
import 'kubernetes_delete_option.dart';
import 'kubernetes_runtime.dart';

/// {@template pulumi_cs_kubernetes_kubernetes_args_doc}
/// The set of arguments for Kubernetes.
/// {@endtemplate}
/// {@macro pulumi_cs_kubernetes_kubernetes_args_doc}
class KubernetesArgs {
  /// The addon you want to install in cluster. See `addons` below. Only works for **Create** Operation, use resource cs_kubernetes_addon to manage addons if cluster is created.
  final pulumi.Input<List<KubernetesAddon>>? addons;
  /// A list of API audiences for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm). Set this to `["https://kubernetes.default.svc"]` if you want to enable the Token Volume Projection feature requires specifying `service_account_issuer` as well. From cluster version 1.22+, Service Account Token Volume Projection will be enabled by default.
  final pulumi.Input<List<String>>? apiAudiences;
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
  final pulumi.Input<List<String>> masterInstanceTypes;
  /// Master payment period.Its valid value is one of {1, 2, 3, 6, 12, 24, 36, 48, 60}.
  final pulumi.Input<int>? masterPeriod;
  /// Master payment period unit, the valid value is `Month`.
  final pulumi.Input<String>? masterPeriodUnit;
  /// The vswitches used by master, you can specific 3 or 5 vswitches because of the amount of masters. Detailed below.
  final pulumi.Input<List<String>> masterVswitchIds;
  /// The kubernetes cluster's name. It is unique in one Alicloud account.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? namePrefix;
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
  /// Whether to create internet load balancer for API Server. Default to true. Only works for **Create** Operation.
  ///
  /// > **NOTE:** If you want to use `Terway` as CNI network plugin, You need to specify the `pod_vswitch_ids` field and addons with `terway-eniip`.
  /// If you want to use `Flannel` as CNI network plugin, You need to specify the `pod_cidr` field and addons with `flannel`.
  ///
  /// *Master params*
  final pulumi.Input<bool>? slbInternetEnabled;
  /// Default nil, A map of tags assigned to the kubernetes cluster and work nodes.
  final pulumi.Input<Map<String, String>>? tags;
  /// When you create a cluster, set the time zones for the Master and Worker nodes. You can only change the managed node time zone if you create a cluster. Once the cluster is created, you can only change the time zone of the Worker node.
  final pulumi.Input<String>? timezone;
  /// The path of customized CA cert, you can use this CA to sign client certs to connect your cluster.
  final pulumi.Input<String>? userCa;
  /// Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK.
  final pulumi.Input<String>? version;

  /// Creates a new [KubernetesArgs].
  /// [addons] The addon you want to install in cluster. See `addons` below. Only works for **Create** Operation, use resource cs_kubernetes_addon to manage addons if cluster is created.
  /// [apiAudiences] A list of API audiences for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm). Set this to `["https://kubernetes.default.svc"]` if you want to enable the Token Volume Projection feature requires specifying `service_account_issuer` as well. From cluster version 1.22+, Service Account Token Volume Projection will be enabled by default.
  /// [clientCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  /// [clientKey] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  /// [clusterCaCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  /// [clusterDomain] Cluster local domain name, Default to `cluster.local`. A domain name consists of one or more sections separated by a decimal point (.), each of which is up to 63 characters long, and can be lowercase, numerals, and underscores (-), and must be lowercase or numerals at the beginning and end.
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
  /// [masterPeriod] Master payment period.Its valid value is one of {1, 2, 3, 6, 12, 24, 36, 48, 60}.
  /// [masterPeriodUnit] Master payment period unit, the valid value is `Month`.
  /// [masterVswitchIds] The vswitches used by master, you can specific 3 or 5 vswitches because of the amount of masters. Detailed below.
  /// [name] The kubernetes cluster's name. It is unique in one Alicloud account.
  /// [namePrefix] Optional.
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
  /// [slbInternetEnabled] Whether to create internet load balancer for API Server. Default to true. Only works for **Create** Operation.
  /// [tags] Default nil, A map of tags assigned to the kubernetes cluster and work nodes.
  /// [timezone] When you create a cluster, set the time zones for the Master and Worker nodes. You can only change the managed node time zone if you create a cluster. Once the cluster is created, you can only change the time zone of the Worker node.
  /// [userCa] The path of customized CA cert, you can use this CA to sign client certs to connect your cluster.
  /// [version] Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK.
  KubernetesArgs({
    this.addons,
    this.apiAudiences,
    this.clientCert,
    this.clientKey,
    this.clusterCaCert,
    this.clusterDomain,
    this.customSan,
    this.deleteOptions,
    this.deletionProtection,
    this.enableSsh,
    this.imageId,
    this.installCloudMonitor,
    this.isEnterpriseSecurityGroup,
    this.keyName,
    this.kmsEncryptedPassword,
    this.kmsEncryptionContext,
    this.loadBalancerSpec,
    this.masterAutoRenew,
    this.masterAutoRenewPeriod,
    this.masterDiskCategory,
    this.masterDiskPerformanceLevel,
    this.masterDiskSize,
    this.masterDiskSnapshotPolicyId,
    this.masterInstanceChargeType,
    required this.masterInstanceTypes,
    this.masterPeriod,
    this.masterPeriodUnit,
    required this.masterVswitchIds,
    this.name,
    this.namePrefix,
    this.newNatGateway,
    this.nodeCidrMask,
    this.nodeNameMode,
    this.osType,
    this.password,
    this.platform,
    this.podCidr,
    this.podVswitchIds,
    this.proxyMode,
    this.rdsInstances,
    this.resourceGroupId,
    this.retainResources,
    this.runtime,
    this.securityGroupId,
    this.serviceAccountIssuer,
    this.serviceCidr,
    this.skipSetCertificateAuthority,
    this.slbInternetEnabled,
    this.tags,
    this.timezone,
    this.userCa,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addons': ?pulumi.Input.mapOptionalInputValue<List<KubernetesAddon>, List<Map<String, dynamic>>>(addons, (value) => pulumi.Input.encodeList<KubernetesAddon, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiAudiences': ?apiAudiences,
      'clientCert': ?clientCert,
      'clientKey': ?clientKey,
      'clusterCaCert': ?clusterCaCert,
      'clusterDomain': ?clusterDomain,
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
      'masterInstanceTypes': masterInstanceTypes,
      'masterPeriod': ?masterPeriod,
      'masterPeriodUnit': ?masterPeriodUnit,
      'masterVswitchIds': masterVswitchIds,
      'name': ?name,
      'namePrefix': ?namePrefix,
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
      'slbInternetEnabled': ?slbInternetEnabled,
      'tags': ?tags,
      'timezone': ?timezone,
      'userCa': ?userCa,
      'version': ?version,
    };
  }

  factory KubernetesArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesArgs(
      addons: map['addons'] == null ? null : (pulumi.Input.decodeList<KubernetesAddon>(map['addons'], (value) => KubernetesAddon.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiAudiences: map['apiAudiences'] == null ? null : ((map['apiAudiences'] as List).cast<String>()).input(),
      clientCert: map['clientCert'] == null ? null : (map['clientCert'] as String).input(),
      clientKey: map['clientKey'] == null ? null : (map['clientKey'] as String).input(),
      clusterCaCert: map['clusterCaCert'] == null ? null : (map['clusterCaCert'] as String).input(),
      clusterDomain: map['clusterDomain'] == null ? null : (map['clusterDomain'] as String).input(),
      customSan: map['customSan'] == null ? null : (map['customSan'] as String).input(),
      deleteOptions: map['deleteOptions'] == null ? null : (pulumi.Input.decodeList<KubernetesDeleteOption>(map['deleteOptions'], (value) => KubernetesDeleteOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      enableSsh: map['enableSsh'] == null ? null : (map['enableSsh'] as bool).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      installCloudMonitor: map['installCloudMonitor'] == null ? null : (map['installCloudMonitor'] as bool).input(),
      isEnterpriseSecurityGroup: map['isEnterpriseSecurityGroup'] == null ? null : (map['isEnterpriseSecurityGroup'] as bool).input(),
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : (map['kmsEncryptedPassword'] as String).input(),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : ((map['kmsEncryptionContext'] as Map).cast<String, String>()).input(),
      loadBalancerSpec: map['loadBalancerSpec'] == null ? null : (map['loadBalancerSpec'] as String).input(),
      masterAutoRenew: map['masterAutoRenew'] == null ? null : (map['masterAutoRenew'] as bool).input(),
      masterAutoRenewPeriod: map['masterAutoRenewPeriod'] == null ? null : (map['masterAutoRenewPeriod'] as int).input(),
      masterDiskCategory: map['masterDiskCategory'] == null ? null : (map['masterDiskCategory'] as String).input(),
      masterDiskPerformanceLevel: map['masterDiskPerformanceLevel'] == null ? null : (map['masterDiskPerformanceLevel'] as String).input(),
      masterDiskSize: map['masterDiskSize'] == null ? null : (map['masterDiskSize'] as int).input(),
      masterDiskSnapshotPolicyId: map['masterDiskSnapshotPolicyId'] == null ? null : (map['masterDiskSnapshotPolicyId'] as String).input(),
      masterInstanceChargeType: map['masterInstanceChargeType'] == null ? null : (map['masterInstanceChargeType'] as String).input(),
      masterInstanceTypes: ((map['masterInstanceTypes'] as List).cast<String>()).input(),
      masterPeriod: map['masterPeriod'] == null ? null : (map['masterPeriod'] as int).input(),
      masterPeriodUnit: map['masterPeriodUnit'] == null ? null : (map['masterPeriodUnit'] as String).input(),
      masterVswitchIds: ((map['masterVswitchIds'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      newNatGateway: map['newNatGateway'] == null ? null : (map['newNatGateway'] as bool).input(),
      nodeCidrMask: map['nodeCidrMask'] == null ? null : (map['nodeCidrMask'] as int).input(),
      nodeNameMode: map['nodeNameMode'] == null ? null : (map['nodeNameMode'] as String).input(),
      osType: map['osType'] == null ? null : (map['osType'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      platform: map['platform'] == null ? null : (map['platform'] as String).input(),
      podCidr: map['podCidr'] == null ? null : (map['podCidr'] as String).input(),
      podVswitchIds: map['podVswitchIds'] == null ? null : ((map['podVswitchIds'] as List).cast<String>()).input(),
      proxyMode: map['proxyMode'] == null ? null : (map['proxyMode'] as String).input(),
      rdsInstances: map['rdsInstances'] == null ? null : ((map['rdsInstances'] as List).cast<String>()).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      retainResources: map['retainResources'] == null ? null : ((map['retainResources'] as List).cast<String>()).input(),
      runtime: map['runtime'] == null ? null : (KubernetesRuntime.fromMap((map['runtime'] as Map).cast<String, dynamic>())).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      serviceAccountIssuer: map['serviceAccountIssuer'] == null ? null : (map['serviceAccountIssuer'] as String).input(),
      serviceCidr: map['serviceCidr'] == null ? null : (map['serviceCidr'] as String).input(),
      skipSetCertificateAuthority: map['skipSetCertificateAuthority'] == null ? null : (map['skipSetCertificateAuthority'] as bool).input(),
      slbInternetEnabled: map['slbInternetEnabled'] == null ? null : (map['slbInternetEnabled'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      timezone: map['timezone'] == null ? null : (map['timezone'] as String).input(),
      userCa: map['userCa'] == null ? null : (map['userCa'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

