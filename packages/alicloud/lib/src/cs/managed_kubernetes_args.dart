// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_kubernetes_addon.dart';
import 'managed_kubernetes_audit_log_config.dart';
import 'managed_kubernetes_auto_mode.dart';
import 'managed_kubernetes_delete_option.dart';
import 'managed_kubernetes_maintenance_window.dart';
import 'managed_kubernetes_operation_policy.dart';
import 'managed_kubernetes_upgrade_policy.dart';

/// {@template pulumi_cs_managed_kubernetes_managed_kubernetes_args_doc}
/// The set of arguments for ManagedKubernetes.
/// {@endtemplate}
/// {@macro pulumi_cs_managed_kubernetes_managed_kubernetes_args_doc}
class ManagedKubernetesArgs {
  /// The addon you want to install in cluster. See `addons` below. Only works for **Create** Operation, use resource cs_kubernetes_addon to manage addons if cluster is created.
  final pulumi.Input<List<ManagedKubernetesAddon>>? addons;
  /// A list of API audiences for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm). Set this to `["https://kubernetes.default.svc"]` if you want to enable the Token Volume Projection feature (requires specifying `service_account_issuer` as well. From cluster version 1.22, Service Account Token Volume Projection will be enabled by default.
  final pulumi.Input<List<String>>? apiAudiences;
  /// Audit log configuration. See `audit_log_config` below.
  final pulumi.Input<ManagedKubernetesAuditLogConfig>? auditLogConfig;
  /// Auto mode cluster configuration. See `auto_mode` below.
  final pulumi.Input<ManagedKubernetesAutoMode>? autoMode;
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
  /// The cluster specifications of kubernetes cluster,which can be empty. Valid values:
  /// * ack.standard : Basic managed clusters.
  /// * ack.pro.small : Professional managed clusters.
  final pulumi.Input<String>? clusterSpec;
  /// List of target components for which logs need to be collected. Supports `apiserver`, `kcm`, `scheduler`, `ccm` and `controlplane-events`.
  final pulumi.Input<List<String>>? controlPlaneLogComponents;
  /// Control plane log project. If this field is not set, a log service project named k8s-log-{ClusterID} will be automatically created.
  final pulumi.Input<String>? controlPlaneLogProject;
  /// Control plane log retention duration (unit: day). Default `30`. If control plane logs are to be collected, `control_plane_log_ttl` and `control_plane_log_components` must be specified.
  final pulumi.Input<String>? controlPlaneLogTtl;
  /// Customize the certificate SAN, multiple IP or domain names are separated by English commas (,).
  /// > **NOTE:** Make sure you have specified all certificate SANs before updating. Updating this field will lead APIServer to restart.
  final pulumi.Input<String>? customSan;
  /// Delete options, only work for deleting resource. Make sure you have run `pulumi up` to make the configuration applied. See `delete_options` below.
  final pulumi.Input<List<ManagedKubernetesDeleteOption>>? deleteOptions;
  /// Whether to enable cluster deletion protection.
  final pulumi.Input<bool>? deletionProtection;
  /// Whether to enable cluster to support RRSA for kubernetes version 1.22.3+. Default to `false`. Once the RRSA function is turned on, it is not allowed to turn off. If your cluster has enabled this function, please manually modify your tf file and add the rrsa configuration to the file, learn more [RAM Roles for Service Accounts](https://www.alibabacloud.com/help/zh/container-service-for-kubernetes/latest/use-rrsa-to-enforce-access-control).
  final pulumi.Input<bool>? enableRrsa;
  /// The ID of the Key Management Service (KMS) key that is used to encrypt Kubernetes Secrets.
  final pulumi.Input<String>? encryptionProviderKey;
  /// The IP address family that the cluster network uses. Valid values:
  final pulumi.Input<String>? ipStack;
  /// Enable to create advanced security group. default: false. Only works for **Create** Operation. See [Advanced security group](https://www.alibabacloud.com/help/doc-detail/120621.htm).
  final pulumi.Input<bool>? isEnterpriseSecurityGroup;
  /// The cluster api server load balancer instance specification. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html). Only works for **Create** Operation. The spec will not take effect because the charge of the load balancer has been changed to PayByCLCU.
  final pulumi.Input<String>? loadBalancerSpec;
  /// The cluster maintenance window. Managed node pool will use it. See `maintenance_window` below.
  final pulumi.Input<ManagedKubernetesMaintenanceWindow>? maintenanceWindow;
  /// The kubernetes cluster's name. It is unique in one Alicloud account.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? namePrefix;
  /// Whether to create a new nat gateway while creating kubernetes cluster. Default to true. Then openapi in Alibaba Cloud are not all on intranet, So turn this option on is a good choice. Only works for **Create** Operation.
  final pulumi.Input<bool>? newNatGateway;
  /// The node cidr block to specific how many pods can run on single node. 24-28 is allowed. 24 means 2^(32-24)-1=255 and the node can run at most 255 pods. default: 24
  final pulumi.Input<int>? nodeCidrMask;
  /// The cluster automatic operation policy, only works when `maintenance_window` is enabled. See `operation_policy` below.
  final pulumi.Input<ManagedKubernetesOperationPolicy>? operationPolicy;
  /// [Flannel Specific] The CIDR block for the pod network when using Flannel.
  final pulumi.Input<String>? podCidr;
  /// [Terway Specific] The vswitches for the pod network when using Terway. It is recommended that `pod_vswitch_ids` is not belong to `vswitch_ids` but must be in same availability zones. Only works for **Create** Operation.
  final pulumi.Input<List<String>>? podVswitchIds;
  /// The profile of cluster. Valid values:
  /// * `Default`: ACK managed cluster. ACK managed clusters include ACK Basic clusters and ACK Pro clusters.
  /// * `Edge`: ACK Edge cluster. ACK Edge clusters include ACK Edge Basic clusters and ACK Edge Pro clusters.
  /// * `Serverless`: ACK Serverless cluster. ACK Serverless clusters include ACK Serverless Basic clusters and ACK Serverless Pro clusters.
  /// * `Acs`: ACS cluster.
  final pulumi.Input<String>? profile;
  /// Proxy mode is option of kube-proxy. options: iptables|ipvs. default: ipvs.
  final pulumi.Input<String>? proxyMode;
  /// The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<List<String>>? retainResources;
  /// The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  /// * > **NOTE:** Please take of note before updating the `security_group_id`:
  /// * If block rules are configured in the security group, ensure the security group rules allow traffic for protocols and ports required by the cluster. For recommended security group rules, see [Configure and manage security groups for an ACK cluster](https://www.alibabacloud.com/help/en/ack/ack-managed-and-ack-dedicated/user-guide/configure-security-group-rules-to-enforce-access-control-on-ack-clusters).
  /// * During security group updates, the cluster control plane and managed components (e.g., terway-controlplane) will restart briefly. Perform this operation during off-peak hours.
  /// * After updating the control plane security group, the Elastic Network Interfaces (ENIs) used by the control plane and managed components will automatically join the new security group.
  final pulumi.Input<String>? securityGroupId;
  /// The issuer of the Service Account token for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm), corresponds to the `iss` field in the token payload. Set this to `"https://kubernetes.default.svc"` to enable the Token Volume Projection feature (requires specifying `api_audiences` as well). From cluster version 1.22, Service Account Token Volume Projection will be enabled by default.
  final pulumi.Input<String>? serviceAccountIssuer;
  /// The CIDR block for the service network. It cannot be duplicated with the VPC CIDR and CIDR used by Kubernetes cluster in VPC, cannot be modified after creation.
  final pulumi.Input<String>? serviceCidr;
  /// Configure whether to save certificate authority data for your cluster to attribute `certificate_authority`. For cluster security, recommended configuration as `true`. Will be removed with attribute certificate_authority removed.
  final pulumi.Input<bool>? skipSetCertificateAuthority;
  /// Whether to create internet load balancer for API Server. Default to true. Only works for **Create** Operation.
  final pulumi.Input<bool>? slbInternetEnabled;
  /// Default nil, A map of tags assigned to the kubernetes cluster and work nodes. See `tags` below.
  final pulumi.Input<Map<String, String>>? tags;
  /// Cluster timezone, works for control plane and Worker nodes.
  /// * > **NOTE:** Please take of note before updating the `timezone`:
  /// * After modifying the timezone, cluster inspection configurations will adopt the new timezone.
  /// * During timezone updates, the cluster control plane and managed components (e.g., terway-controlplane) will restart briefly. Perform this operation during off-peak hours.
  /// * After updating the timezone: Newly scaled-out nodes will automatically apply the new timezone. Existing nodes remain unaffected. Reset the node to apply changes to existing nodes.
  final pulumi.Input<String>? timezone;
  /// Configuration block for cluster upgrade operations. See `upgrade_policy` below.
  /// > **NOTE:** This parameter only applies during resource update.
  ///
  /// *Network params*
  final pulumi.Input<ManagedKubernetesUpgradePolicy>? upgradePolicy;
  /// The path of customized CA cert, you can use this CA to sign client certs to connect your cluster.
  final pulumi.Input<String>? userCa;
  /// Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK. Do not specify if cluster auto upgrade is enabled, see cluster_auto_upgrade for more information.
  final pulumi.Input<String>? version;
  /// The vSwitches of the control plane.
  /// > **NOTE:** Please take of note before updating the `vswitch_ids`:
  /// * This parameter overwrites the existing configuration. You must specify all vSwitches of the control plane.
  /// * The control plane restarts during the change process. Exercise caution when you perform this operation.
  /// * Ensure that all security groups of the cluster, including the security groups of the control plane, all node pools, and container network, are allowed to access the CIDR blocks of the new vSwitches. This ensures that the nodes and containers can connect to the API server.
  /// * If the new vSwitches of the control plane are configured with an ACL, ensure that the ACL allows communication between the new vSwitches and CIDR blocks such as those of the cluster nodes and the container network.
  final pulumi.Input<List<String>>? vswitchIds;
  /// The vSwitches used by control plane. Modification after creation will not take effect. Please use `vswitch_ids` to managed control plane vSwitches, which supports modifying control plane vSwitches.
  final pulumi.Input<List<String>>? workerVswitchIds;
  /// The IDs of the zone in which the cluster control plane is deployed. ACK automatically creates a VPC in the region and vSwitches in the specified zones. Only works for **Create** Operation. Do not specify this with `vswitch_ids` together.
  final pulumi.Input<List<String>>? zoneIds;

  /// Creates a new [ManagedKubernetesArgs].
  /// [addons] The addon you want to install in cluster. See `addons` below. Only works for **Create** Operation, use resource cs_kubernetes_addon to manage addons if cluster is created.
  /// [apiAudiences] A list of API audiences for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm). Set this to `["https://kubernetes.default.svc"]` if you want to enable the Token Volume Projection feature (requires specifying `service_account_issuer` as well. From cluster version 1.22, Service Account Token Volume Projection will be enabled by default.
  /// [auditLogConfig] Audit log configuration. See `audit_log_config` below.
  /// [autoMode] Auto mode cluster configuration. See `auto_mode` below.
  /// [clientCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  /// [clientKey] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  /// [clusterCaCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  /// [clusterDomain] Cluster local domain name, Default to `cluster.local`. A domain name consists of one or more sections separated by a decimal point (.), each of which is up to 63 characters long, and can be lowercase, numerals, and underscores (-), and must be lowercase or numerals at the beginning and end.
  /// [clusterSpec] The cluster specifications of kubernetes cluster,which can be empty. Valid values:
  /// [controlPlaneLogComponents] List of target components for which logs need to be collected. Supports `apiserver`, `kcm`, `scheduler`, `ccm` and `controlplane-events`.
  /// [controlPlaneLogProject] Control plane log project. If this field is not set, a log service project named k8s-log-{ClusterID} will be automatically created.
  /// [controlPlaneLogTtl] Control plane log retention duration (unit: day). Default `30`. If control plane logs are to be collected, `control_plane_log_ttl` and `control_plane_log_components` must be specified.
  /// [customSan] Customize the certificate SAN, multiple IP or domain names are separated by English commas (,).
  /// [deleteOptions] Delete options, only work for deleting resource. Make sure you have run `pulumi up` to make the configuration applied. See `delete_options` below.
  /// [deletionProtection] Whether to enable cluster deletion protection.
  /// [enableRrsa] Whether to enable cluster to support RRSA for kubernetes version 1.22.3+. Default to `false`. Once the RRSA function is turned on, it is not allowed to turn off. If your cluster has enabled this function, please manually modify your tf file and add the rrsa configuration to the file, learn more [RAM Roles for Service Accounts](https://www.alibabacloud.com/help/zh/container-service-for-kubernetes/latest/use-rrsa-to-enforce-access-control).
  /// [encryptionProviderKey] The ID of the Key Management Service (KMS) key that is used to encrypt Kubernetes Secrets.
  /// [ipStack] The IP address family that the cluster network uses. Valid values:
  /// [isEnterpriseSecurityGroup] Enable to create advanced security group. default: false. Only works for **Create** Operation. See [Advanced security group](https://www.alibabacloud.com/help/doc-detail/120621.htm).
  /// [loadBalancerSpec] The cluster api server load balancer instance specification. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html). Only works for **Create** Operation. The spec will not take effect because the charge of the load balancer has been changed to PayByCLCU.
  /// [maintenanceWindow] The cluster maintenance window. Managed node pool will use it. See `maintenance_window` below.
  /// [name] The kubernetes cluster's name. It is unique in one Alicloud account.
  /// [namePrefix] Optional.
  /// [newNatGateway] Whether to create a new nat gateway while creating kubernetes cluster. Default to true. Then openapi in Alibaba Cloud are not all on intranet, So turn this option on is a good choice. Only works for **Create** Operation.
  /// [nodeCidrMask] The node cidr block to specific how many pods can run on single node. 24-28 is allowed. 24 means 2^(32-24)-1=255 and the node can run at most 255 pods. default: 24
  /// [operationPolicy] The cluster automatic operation policy, only works when `maintenance_window` is enabled. See `operation_policy` below.
  /// [podCidr] [Flannel Specific] The CIDR block for the pod network when using Flannel.
  /// [podVswitchIds] [Terway Specific] The vswitches for the pod network when using Terway. It is recommended that `pod_vswitch_ids` is not belong to `vswitch_ids` but must be in same availability zones. Only works for **Create** Operation.
  /// [profile] The profile of cluster. Valid values:
  /// [proxyMode] Proxy mode is option of kube-proxy. options: iptables|ipvs. default: ipvs.
  /// [resourceGroupId] The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  /// [retainResources] Optional.
  /// [securityGroupId] The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  /// [serviceAccountIssuer] The issuer of the Service Account token for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm), corresponds to the `iss` field in the token payload. Set this to `"https://kubernetes.default.svc"` to enable the Token Volume Projection feature (requires specifying `api_audiences` as well). From cluster version 1.22, Service Account Token Volume Projection will be enabled by default.
  /// [serviceCidr] The CIDR block for the service network. It cannot be duplicated with the VPC CIDR and CIDR used by Kubernetes cluster in VPC, cannot be modified after creation.
  /// [skipSetCertificateAuthority] Configure whether to save certificate authority data for your cluster to attribute `certificate_authority`. For cluster security, recommended configuration as `true`. Will be removed with attribute certificate_authority removed.
  /// [slbInternetEnabled] Whether to create internet load balancer for API Server. Default to true. Only works for **Create** Operation.
  /// [tags] Default nil, A map of tags assigned to the kubernetes cluster and work nodes. See `tags` below.
  /// [timezone] Cluster timezone, works for control plane and Worker nodes.
  /// [upgradePolicy] Configuration block for cluster upgrade operations. See `upgrade_policy` below.
  /// [userCa] The path of customized CA cert, you can use this CA to sign client certs to connect your cluster.
  /// [version] Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK. Do not specify if cluster auto upgrade is enabled, see cluster_auto_upgrade for more information.
  /// [vswitchIds] The vSwitches of the control plane.
  /// [workerVswitchIds] The vSwitches used by control plane. Modification after creation will not take effect. Please use `vswitch_ids` to managed control plane vSwitches, which supports modifying control plane vSwitches.
  /// [zoneIds] The IDs of the zone in which the cluster control plane is deployed. ACK automatically creates a VPC in the region and vSwitches in the specified zones. Only works for **Create** Operation. Do not specify this with `vswitch_ids` together.
  ManagedKubernetesArgs({
    List<ManagedKubernetesAddon>? addons,
    List<String>? apiAudiences,
    ManagedKubernetesAuditLogConfig? auditLogConfig,
    ManagedKubernetesAutoMode? autoMode,
    String? clientCert,
    String? clientKey,
    String? clusterCaCert,
    String? clusterDomain,
    String? clusterSpec,
    List<String>? controlPlaneLogComponents,
    String? controlPlaneLogProject,
    String? controlPlaneLogTtl,
    String? customSan,
    List<ManagedKubernetesDeleteOption>? deleteOptions,
    bool? deletionProtection,
    bool? enableRrsa,
    String? encryptionProviderKey,
    String? ipStack,
    bool? isEnterpriseSecurityGroup,
    String? loadBalancerSpec,
    ManagedKubernetesMaintenanceWindow? maintenanceWindow,
    String? name,
    String? namePrefix,
    bool? newNatGateway,
    int? nodeCidrMask,
    ManagedKubernetesOperationPolicy? operationPolicy,
    String? podCidr,
    List<String>? podVswitchIds,
    String? profile,
    String? proxyMode,
    String? resourceGroupId,
    List<String>? retainResources,
    String? securityGroupId,
    String? serviceAccountIssuer,
    String? serviceCidr,
    bool? skipSetCertificateAuthority,
    bool? slbInternetEnabled,
    Map<String, String>? tags,
    String? timezone,
    ManagedKubernetesUpgradePolicy? upgradePolicy,
    String? userCa,
    String? version,
    List<String>? vswitchIds,
    List<String>? workerVswitchIds,
    List<String>? zoneIds,
  }) :
      addons = pulumi.Input.asOptionalInput<List<ManagedKubernetesAddon>>(addons),
      apiAudiences = pulumi.Input.asOptionalInput<List<String>>(apiAudiences),
      auditLogConfig = pulumi.Input.asOptionalInput<ManagedKubernetesAuditLogConfig>(auditLogConfig),
      autoMode = pulumi.Input.asOptionalInput<ManagedKubernetesAutoMode>(autoMode),
      clientCert = pulumi.Input.asOptionalInput<String>(clientCert),
      clientKey = pulumi.Input.asOptionalInput<String>(clientKey),
      clusterCaCert = pulumi.Input.asOptionalInput<String>(clusterCaCert),
      clusterDomain = pulumi.Input.asOptionalInput<String>(clusterDomain),
      clusterSpec = pulumi.Input.asOptionalInput<String>(clusterSpec),
      controlPlaneLogComponents = pulumi.Input.asOptionalInput<List<String>>(controlPlaneLogComponents),
      controlPlaneLogProject = pulumi.Input.asOptionalInput<String>(controlPlaneLogProject),
      controlPlaneLogTtl = pulumi.Input.asOptionalInput<String>(controlPlaneLogTtl),
      customSan = pulumi.Input.asOptionalInput<String>(customSan),
      deleteOptions = pulumi.Input.asOptionalInput<List<ManagedKubernetesDeleteOption>>(deleteOptions),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      enableRrsa = pulumi.Input.asOptionalInput<bool>(enableRrsa),
      encryptionProviderKey = pulumi.Input.asOptionalInput<String>(encryptionProviderKey),
      ipStack = pulumi.Input.asOptionalInput<String>(ipStack),
      isEnterpriseSecurityGroup = pulumi.Input.asOptionalInput<bool>(isEnterpriseSecurityGroup),
      loadBalancerSpec = pulumi.Input.asOptionalInput<String>(loadBalancerSpec),
      maintenanceWindow = pulumi.Input.asOptionalInput<ManagedKubernetesMaintenanceWindow>(maintenanceWindow),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      newNatGateway = pulumi.Input.asOptionalInput<bool>(newNatGateway),
      nodeCidrMask = pulumi.Input.asOptionalInput<int>(nodeCidrMask),
      operationPolicy = pulumi.Input.asOptionalInput<ManagedKubernetesOperationPolicy>(operationPolicy),
      podCidr = pulumi.Input.asOptionalInput<String>(podCidr),
      podVswitchIds = pulumi.Input.asOptionalInput<List<String>>(podVswitchIds),
      profile = pulumi.Input.asOptionalInput<String>(profile),
      proxyMode = pulumi.Input.asOptionalInput<String>(proxyMode),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      retainResources = pulumi.Input.asOptionalInput<List<String>>(retainResources),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      serviceAccountIssuer = pulumi.Input.asOptionalInput<String>(serviceAccountIssuer),
      serviceCidr = pulumi.Input.asOptionalInput<String>(serviceCidr),
      skipSetCertificateAuthority = pulumi.Input.asOptionalInput<bool>(skipSetCertificateAuthority),
      slbInternetEnabled = pulumi.Input.asOptionalInput<bool>(slbInternetEnabled),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timezone = pulumi.Input.asOptionalInput<String>(timezone),
      upgradePolicy = pulumi.Input.asOptionalInput<ManagedKubernetesUpgradePolicy>(upgradePolicy),
      userCa = pulumi.Input.asOptionalInput<String>(userCa),
      version = pulumi.Input.asOptionalInput<String>(version),
      vswitchIds = pulumi.Input.asOptionalInput<List<String>>(vswitchIds),
      workerVswitchIds = pulumi.Input.asOptionalInput<List<String>>(workerVswitchIds),
      zoneIds = pulumi.Input.asOptionalInput<List<String>>(zoneIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addons': ?pulumi.Input.mapOptionalInputValue<List<ManagedKubernetesAddon>, List<Map<String, dynamic>>>(addons, (value) => pulumi.Input.encodeList<ManagedKubernetesAddon, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiAudiences': ?apiAudiences,
      'auditLogConfig': ?pulumi.Input.mapOptionalInputValue<ManagedKubernetesAuditLogConfig, Map<String, dynamic>>(auditLogConfig, (value) => value.toMap()),
      'autoMode': ?pulumi.Input.mapOptionalInputValue<ManagedKubernetesAutoMode, Map<String, dynamic>>(autoMode, (value) => value.toMap()),
      'clientCert': ?clientCert,
      'clientKey': ?clientKey,
      'clusterCaCert': ?clusterCaCert,
      'clusterDomain': ?clusterDomain,
      'clusterSpec': ?clusterSpec,
      'controlPlaneLogComponents': ?controlPlaneLogComponents,
      'controlPlaneLogProject': ?controlPlaneLogProject,
      'controlPlaneLogTtl': ?controlPlaneLogTtl,
      'customSan': ?customSan,
      'deleteOptions': ?pulumi.Input.mapOptionalInputValue<List<ManagedKubernetesDeleteOption>, List<Map<String, dynamic>>>(deleteOptions, (value) => pulumi.Input.encodeList<ManagedKubernetesDeleteOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionProtection': ?deletionProtection,
      'enableRrsa': ?enableRrsa,
      'encryptionProviderKey': ?encryptionProviderKey,
      'ipStack': ?ipStack,
      'isEnterpriseSecurityGroup': ?isEnterpriseSecurityGroup,
      'loadBalancerSpec': ?loadBalancerSpec,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<ManagedKubernetesMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'newNatGateway': ?newNatGateway,
      'nodeCidrMask': ?nodeCidrMask,
      'operationPolicy': ?pulumi.Input.mapOptionalInputValue<ManagedKubernetesOperationPolicy, Map<String, dynamic>>(operationPolicy, (value) => value.toMap()),
      'podCidr': ?podCidr,
      'podVswitchIds': ?podVswitchIds,
      'profile': ?profile,
      'proxyMode': ?proxyMode,
      'resourceGroupId': ?resourceGroupId,
      'retainResources': ?retainResources,
      'securityGroupId': ?securityGroupId,
      'serviceAccountIssuer': ?serviceAccountIssuer,
      'serviceCidr': ?serviceCidr,
      'skipSetCertificateAuthority': ?skipSetCertificateAuthority,
      'slbInternetEnabled': ?slbInternetEnabled,
      'tags': ?tags,
      'timezone': ?timezone,
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<ManagedKubernetesUpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
      'userCa': ?userCa,
      'version': ?version,
      'vswitchIds': ?vswitchIds,
      'workerVswitchIds': ?workerVswitchIds,
      'zoneIds': ?zoneIds,
    };
  }

  factory ManagedKubernetesArgs.fromMap(Map<String, dynamic> map) {
    return ManagedKubernetesArgs(
      addons: map['addons'] == null ? null : pulumi.Input.decodeList<ManagedKubernetesAddon>(map['addons'], (value) => ManagedKubernetesAddon.fromMap((value as Map).cast<String, dynamic>())),
      apiAudiences: map['apiAudiences'] == null ? null : (map['apiAudiences'] as List).cast<String>(),
      auditLogConfig: map['auditLogConfig'] == null ? null : ManagedKubernetesAuditLogConfig.fromMap((map['auditLogConfig'] as Map).cast<String, dynamic>()),
      autoMode: map['autoMode'] == null ? null : ManagedKubernetesAutoMode.fromMap((map['autoMode'] as Map).cast<String, dynamic>()),
      clientCert: map['clientCert'] == null ? null : map['clientCert'] as String,
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
      clusterCaCert: map['clusterCaCert'] == null ? null : map['clusterCaCert'] as String,
      clusterDomain: map['clusterDomain'] == null ? null : map['clusterDomain'] as String,
      clusterSpec: map['clusterSpec'] == null ? null : map['clusterSpec'] as String,
      controlPlaneLogComponents: map['controlPlaneLogComponents'] == null ? null : (map['controlPlaneLogComponents'] as List).cast<String>(),
      controlPlaneLogProject: map['controlPlaneLogProject'] == null ? null : map['controlPlaneLogProject'] as String,
      controlPlaneLogTtl: map['controlPlaneLogTtl'] == null ? null : map['controlPlaneLogTtl'] as String,
      customSan: map['customSan'] == null ? null : map['customSan'] as String,
      deleteOptions: map['deleteOptions'] == null ? null : pulumi.Input.decodeList<ManagedKubernetesDeleteOption>(map['deleteOptions'], (value) => ManagedKubernetesDeleteOption.fromMap((value as Map).cast<String, dynamic>())),
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as bool,
      enableRrsa: map['enableRrsa'] == null ? null : map['enableRrsa'] as bool,
      encryptionProviderKey: map['encryptionProviderKey'] == null ? null : map['encryptionProviderKey'] as String,
      ipStack: map['ipStack'] == null ? null : map['ipStack'] as String,
      isEnterpriseSecurityGroup: map['isEnterpriseSecurityGroup'] == null ? null : map['isEnterpriseSecurityGroup'] as bool,
      loadBalancerSpec: map['loadBalancerSpec'] == null ? null : map['loadBalancerSpec'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null ? null : ManagedKubernetesMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix'] as String,
      newNatGateway: map['newNatGateway'] == null ? null : map['newNatGateway'] as bool,
      nodeCidrMask: map['nodeCidrMask'] == null ? null : map['nodeCidrMask'] as int,
      operationPolicy: map['operationPolicy'] == null ? null : ManagedKubernetesOperationPolicy.fromMap((map['operationPolicy'] as Map).cast<String, dynamic>()),
      podCidr: map['podCidr'] == null ? null : map['podCidr'] as String,
      podVswitchIds: map['podVswitchIds'] == null ? null : (map['podVswitchIds'] as List).cast<String>(),
      profile: map['profile'] == null ? null : map['profile'] as String,
      proxyMode: map['proxyMode'] == null ? null : map['proxyMode'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      retainResources: map['retainResources'] == null ? null : (map['retainResources'] as List).cast<String>(),
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
      serviceAccountIssuer: map['serviceAccountIssuer'] == null ? null : map['serviceAccountIssuer'] as String,
      serviceCidr: map['serviceCidr'] == null ? null : map['serviceCidr'] as String,
      skipSetCertificateAuthority: map['skipSetCertificateAuthority'] == null ? null : map['skipSetCertificateAuthority'] as bool,
      slbInternetEnabled: map['slbInternetEnabled'] == null ? null : map['slbInternetEnabled'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timezone: map['timezone'] == null ? null : map['timezone'] as String,
      upgradePolicy: map['upgradePolicy'] == null ? null : ManagedKubernetesUpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>()),
      userCa: map['userCa'] == null ? null : map['userCa'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      vswitchIds: map['vswitchIds'] == null ? null : (map['vswitchIds'] as List).cast<String>(),
      workerVswitchIds: map['workerVswitchIds'] == null ? null : (map['workerVswitchIds'] as List).cast<String>(),
      zoneIds: map['zoneIds'] == null ? null : (map['zoneIds'] as List).cast<String>(),
    );
  }
}

