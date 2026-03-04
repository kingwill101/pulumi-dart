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

  /// Each node name consists of a prefix, an IP substring, and a suffix, the input format is `customized,&lt;prefix&gt;,IPSubStringLen,&lt;suffix&gt;`. For example "customized,aliyun.com-,5,-test", if the node IP address is 192.168.59.176, the prefix is aliyun.com-, IP substring length is 5, and the suffix is -test, the node name will be aliyun.com-59176-test.
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
  /// &gt; **NOTE:** If you want to use `Terway` as CNI network plugin, You need to specify the `pod_vswitch_ids` field and addons with `terway-eniip`.
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
  /// [nodeNameMode] Each node name consists of a prefix, an IP substring, and a suffix, the input format is `customized,&lt;prefix&gt;,IPSubStringLen,&lt;suffix&gt;`. For example "customized,aliyun.com-,5,-test", if the node IP address is 192.168.59.176, the prefix is aliyun.com-, IP substring length is 5, and the suffix is -test, the node name will be aliyun.com-59176-test.
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
    this.addons,
    this.apiAudiences,
    this.certificateAuthority,
    this.clientCert,
    this.clientKey,
    this.clusterCaCert,
    this.clusterDomain,
    this.connections,
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
    this.masterInstanceTypes,
    this.masterNodes,
    this.masterPeriod,
    this.masterPeriodUnit,
    this.masterVswitchIds,
    this.name,
    this.namePrefix,
    this.natGatewayId,
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
    this.slbId,
    this.slbInternet,
    this.slbInternetEnabled,
    this.slbIntranet,
    this.tags,
    this.timezone,
    this.userCa,
    this.version,
    this.vpcId,
    this.workerRamRoleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addons':
          ?pulumi.Input.mapOptionalInputValue<
            List<KubernetesAddon>,
            List<Map<String, dynamic>>
          >(
            addons,
            (value) =>
                pulumi.Input.encodeList<KubernetesAddon, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'apiAudiences': ?apiAudiences,
      'certificateAuthority':
          ?pulumi.Input.mapOptionalInputValue<
            KubernetesCertificateAuthority,
            Map<String, dynamic>
          >(certificateAuthority, (value) => value.toMap()),
      'clientCert': ?clientCert,
      'clientKey': ?clientKey,
      'clusterCaCert': ?clusterCaCert,
      'clusterDomain': ?clusterDomain,
      'connections':
          ?pulumi.Input.mapOptionalInputValue<
            KubernetesConnections,
            Map<String, dynamic>
          >(connections, (value) => value.toMap()),
      'customSan': ?customSan,
      'deleteOptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<KubernetesDeleteOption>,
            List<Map<String, dynamic>>
          >(
            deleteOptions,
            (value) =>
                pulumi.Input.encodeList<
                  KubernetesDeleteOption,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'masterNodes':
          ?pulumi.Input.mapOptionalInputValue<
            List<KubernetesMasterNode>,
            List<Map<String, dynamic>>
          >(
            masterNodes,
            (value) =>
                pulumi.Input.encodeList<
                  KubernetesMasterNode,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'runtime':
          ?pulumi.Input.mapOptionalInputValue<
            KubernetesRuntime,
            Map<String, dynamic>
          >(runtime, (value) => value.toMap()),
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
      addons: (() {
        final guardedValue = map['addons'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<KubernetesAddon>(
            guardedValue,
            (value) =>
                KubernetesAddon.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      apiAudiences: (() {
        final guardedValue = map['apiAudiences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      certificateAuthority: (() {
        final guardedValue = map['certificateAuthority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KubernetesCertificateAuthority.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clientCert: (() {
        final guardedValue = map['clientCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientKey: (() {
        final guardedValue = map['clientKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterCaCert: (() {
        final guardedValue = map['clusterCaCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterDomain: (() {
        final guardedValue = map['clusterDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connections: (() {
        final guardedValue = map['connections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KubernetesConnections.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      customSan: (() {
        final guardedValue = map['customSan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deleteOptions: (() {
        final guardedValue = map['deleteOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<KubernetesDeleteOption>(
            guardedValue,
            (value) => KubernetesDeleteOption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableSsh: (() {
        final guardedValue = map['enableSsh'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      imageId: (() {
        final guardedValue = map['imageId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      installCloudMonitor: (() {
        final guardedValue = map['installCloudMonitor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isEnterpriseSecurityGroup: (() {
        final guardedValue = map['isEnterpriseSecurityGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      keyName: (() {
        final guardedValue = map['keyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsEncryptedPassword: (() {
        final guardedValue = map['kmsEncryptedPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsEncryptionContext: (() {
        final guardedValue = map['kmsEncryptionContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      loadBalancerSpec: (() {
        final guardedValue = map['loadBalancerSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterAutoRenew: (() {
        final guardedValue = map['masterAutoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      masterAutoRenewPeriod: (() {
        final guardedValue = map['masterAutoRenewPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      masterDiskCategory: (() {
        final guardedValue = map['masterDiskCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterDiskPerformanceLevel: (() {
        final guardedValue = map['masterDiskPerformanceLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterDiskSize: (() {
        final guardedValue = map['masterDiskSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      masterDiskSnapshotPolicyId: (() {
        final guardedValue = map['masterDiskSnapshotPolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterInstanceChargeType: (() {
        final guardedValue = map['masterInstanceChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterInstanceTypes: (() {
        final guardedValue = map['masterInstanceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      masterNodes: (() {
        final guardedValue = map['masterNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<KubernetesMasterNode>(
            guardedValue,
            (value) => KubernetesMasterNode.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      masterPeriod: (() {
        final guardedValue = map['masterPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      masterPeriodUnit: (() {
        final guardedValue = map['masterPeriodUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterVswitchIds: (() {
        final guardedValue = map['masterVswitchIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      natGatewayId: (() {
        final guardedValue = map['natGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      newNatGateway: (() {
        final guardedValue = map['newNatGateway'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nodeCidrMask: (() {
        final guardedValue = map['nodeCidrMask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nodeNameMode: (() {
        final guardedValue = map['nodeNameMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osType: (() {
        final guardedValue = map['osType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      platform: (() {
        final guardedValue = map['platform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      podCidr: (() {
        final guardedValue = map['podCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      podVswitchIds: (() {
        final guardedValue = map['podVswitchIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      proxyMode: (() {
        final guardedValue = map['proxyMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rdsInstances: (() {
        final guardedValue = map['rdsInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retainResources: (() {
        final guardedValue = map['retainResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      runtime: (() {
        final guardedValue = map['runtime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KubernetesRuntime.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      securityGroupId: (() {
        final guardedValue = map['securityGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccountIssuer: (() {
        final guardedValue = map['serviceAccountIssuer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceCidr: (() {
        final guardedValue = map['serviceCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skipSetCertificateAuthority: (() {
        final guardedValue = map['skipSetCertificateAuthority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      slbId: (() {
        final guardedValue = map['slbId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slbInternet: (() {
        final guardedValue = map['slbInternet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slbInternetEnabled: (() {
        final guardedValue = map['slbInternetEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      slbIntranet: (() {
        final guardedValue = map['slbIntranet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timezone: (() {
        final guardedValue = map['timezone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userCa: (() {
        final guardedValue = map['userCa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workerRamRoleName: (() {
        final guardedValue = map['workerRamRoleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
