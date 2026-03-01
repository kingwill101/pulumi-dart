// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_kubernetes_addon.dart';
import 'serverless_kubernetes_delete_option.dart';
import 'serverless_kubernetes_maintenance_window.dart';
import 'serverless_kubernetes_operation_policy.dart';

/// {@template pulumi_cs_serverless_kubernetes_serverless_kubernetes_args_doc}
/// The set of arguments for ServerlessKubernetes.
/// {@endtemplate}
/// {@macro pulumi_cs_serverless_kubernetes_serverless_kubernetes_args_doc}
class ServerlessKubernetesArgs {
  /// You can specific network plugin, log component, ingress component and so on. See `addons` below. Only works for **Create** Operation, use resource cs_kubernetes_addon to manage addons if cluster is created.
  final pulumi.Input<List<ServerlessKubernetesAddon>>? addons;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  final pulumi.Input<String>? clientCert;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  final pulumi.Input<String>? clientKey;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  final pulumi.Input<String>? clusterCaCert;
  /// The cluster specifications of serverless kubernetes cluster, which can be empty. Valid values:
  /// - ack.standard: Standard serverless clusters.
  /// - ack.pro.small: Professional serverless clusters.
  final pulumi.Input<String>? clusterSpec;
  /// Customize the certificate SAN, multiple IP or domain names are separated by English commas (,).
  /// > **NOTE:** Make sure you have specified all certificate SANs before updating. Updating this field will lead APIServer to restart.
  final pulumi.Input<String>? customSan;
  /// Delete options, only work for deleting resource. Make sure you have run `pulumi up` to make the configuration applied. See `delete_options` below.
  final pulumi.Input<List<ServerlessKubernetesDeleteOption>>? deleteOptions;
  /// Whether enable the deletion protection or not.
  /// - true: Enable deletion protection.
  /// - false: Disable deletion protection.
  final pulumi.Input<bool>? deletionProtection;
  /// Whether to enable cluster to support RRSA for version 1.22.3+. Default to `false`. Once the RRSA function is turned on, it is not allowed to turn off. If your cluster has enabled this function, please manually modify your tf file and add the rrsa configuration to the file, learn more [RAM Roles for Service Accounts](https://www.alibabacloud.com/help/zh/container-service-for-kubernetes/latest/use-rrsa-to-enforce-access-control).
  final pulumi.Input<bool>? enableRrsa;
  /// Whether to create internet eip for API Server. Default to false. Only works for **Create** Operation.
  final pulumi.Input<bool>? endpointPublicAccessEnabled;
  /// The path of kube config, like ~/.kube/config. Please use the attribute output_file of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  final pulumi.Input<String>? kubeConfig;
  /// The cluster api server load balance instance specification, default `slb.s2.small`. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html). Only works for **Create** Operation.
  final pulumi.Input<String>? loadBalancerSpec;
  /// Enable log service, Valid value `SLS`. Only works for **Create** Operation.
  final pulumi.Input<String>? loggingType;
  /// The cluster maintenance window，effective only in the professional managed cluster. Managed node pool will use it. See `maintenance_window` below.
  final pulumi.Input<ServerlessKubernetesMaintenanceWindow>? maintenanceWindow;
  /// The kubernetes cluster's name. It is the only in one Alicloud account.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? namePrefix;
  /// Whether to create a new nat gateway while creating kubernetes cluster. SNAT must be configured when a new VPC is automatically created. Default is `true`.
  final pulumi.Input<bool>? newNatGateway;
  /// The cluster automatic operation policy. See `operation_policy` below.
  ///
  /// *Removed params*
  final pulumi.Input<ServerlessKubernetesOperationPolicy>? operationPolicy;
  /// Has been deprecated from provider version 1.123.1. `PrivateZone` is used as the enumeration value of `service_discovery_types`.
  final pulumi.Input<bool>? privateZone;
  /// The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<List<String>>? retainResources;
  /// The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  final pulumi.Input<String>? securityGroupId;
  /// CIDR block of the service network. The specified CIDR block cannot overlap with that of the VPC or those of the ACK clusters that are deployed in the VPC. The CIDR block cannot be modified after the cluster is created.
  final pulumi.Input<String>? serviceCidr;
  /// Service discovery type. Only works for **Create** Operation. If the value is empty, it means that service discovery is not enabled. Valid values are `CoreDNS` and `PrivateZone`.
  final pulumi.Input<List<String>>? serviceDiscoveryTypes;
  /// If you use an existing SLS project, you must specify `sls_project_name`. Only works for **Create** Operation.
  final pulumi.Input<String>? slsProjectName;
  /// Default nil, A map of tags assigned to the kubernetes cluster and work nodes.
  final pulumi.Input<Map<String, String>>? tags;
  /// The time zone of the cluster.
  final pulumi.Input<String>? timeZone;
  /// Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used.  Do not specify if cluster auto upgrade is enabled, see cluster_auto_upgrade for more information.
  final pulumi.Input<String>? version;
  /// The vpc where new kubernetes cluster will be located. Specify one vpc's id, if it is not specified, a new VPC will be built.
  final pulumi.Input<String>? vpcId;
  /// The vswitches where new kubernetes cluster will be located.
  final pulumi.Input<List<String>>? vswitchIds;
  /// When creating a cluster using automatic VPC creation, you need to specify the zone where the VPC is located. Only works for **Create** Operation.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ServerlessKubernetesArgs].
  /// [addons] You can specific network plugin, log component, ingress component and so on. See `addons` below. Only works for **Create** Operation, use resource cs_kubernetes_addon to manage addons if cluster is created.
  /// [clientCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  /// [clientKey] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  /// [clusterCaCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  /// [clusterSpec] The cluster specifications of serverless kubernetes cluster, which can be empty. Valid values:
  /// [customSan] Customize the certificate SAN, multiple IP or domain names are separated by English commas (,).
  /// [deleteOptions] Delete options, only work for deleting resource. Make sure you have run `pulumi up` to make the configuration applied. See `delete_options` below.
  /// [deletionProtection] Whether enable the deletion protection or not.
  /// [enableRrsa] Whether to enable cluster to support RRSA for version 1.22.3+. Default to `false`. Once the RRSA function is turned on, it is not allowed to turn off. If your cluster has enabled this function, please manually modify your tf file and add the rrsa configuration to the file, learn more [RAM Roles for Service Accounts](https://www.alibabacloud.com/help/zh/container-service-for-kubernetes/latest/use-rrsa-to-enforce-access-control).
  /// [endpointPublicAccessEnabled] Whether to create internet eip for API Server. Default to false. Only works for **Create** Operation.
  /// [kubeConfig] The path of kube config, like ~/.kube/config. Please use the attribute output_file of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  /// [loadBalancerSpec] The cluster api server load balance instance specification, default `slb.s2.small`. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html). Only works for **Create** Operation.
  /// [loggingType] Enable log service, Valid value `SLS`. Only works for **Create** Operation.
  /// [maintenanceWindow] The cluster maintenance window，effective only in the professional managed cluster. Managed node pool will use it. See `maintenance_window` below.
  /// [name] The kubernetes cluster's name. It is the only in one Alicloud account.
  /// [namePrefix] Optional.
  /// [newNatGateway] Whether to create a new nat gateway while creating kubernetes cluster. SNAT must be configured when a new VPC is automatically created. Default is `true`.
  /// [operationPolicy] The cluster automatic operation policy. See `operation_policy` below.
  /// [privateZone] Has been deprecated from provider version 1.123.1. `PrivateZone` is used as the enumeration value of `service_discovery_types`.
  /// [resourceGroupId] The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  /// [retainResources] Optional.
  /// [securityGroupId] The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  /// [serviceCidr] CIDR block of the service network. The specified CIDR block cannot overlap with that of the VPC or those of the ACK clusters that are deployed in the VPC. The CIDR block cannot be modified after the cluster is created.
  /// [serviceDiscoveryTypes] Service discovery type. Only works for **Create** Operation. If the value is empty, it means that service discovery is not enabled. Valid values are `CoreDNS` and `PrivateZone`.
  /// [slsProjectName] If you use an existing SLS project, you must specify `sls_project_name`. Only works for **Create** Operation.
  /// [tags] Default nil, A map of tags assigned to the kubernetes cluster and work nodes.
  /// [timeZone] The time zone of the cluster.
  /// [version] Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used.  Do not specify if cluster auto upgrade is enabled, see cluster_auto_upgrade for more information.
  /// [vpcId] The vpc where new kubernetes cluster will be located. Specify one vpc's id, if it is not specified, a new VPC will be built.
  /// [vswitchIds] The vswitches where new kubernetes cluster will be located.
  /// [zoneId] When creating a cluster using automatic VPC creation, you need to specify the zone where the VPC is located. Only works for **Create** Operation.
  ServerlessKubernetesArgs({
    pulumi.Output<List<ServerlessKubernetesAddon>>? addons,
    pulumi.Output<String>? clientCert,
    pulumi.Output<String>? clientKey,
    pulumi.Output<String>? clusterCaCert,
    pulumi.Output<String>? clusterSpec,
    pulumi.Output<String>? customSan,
    pulumi.Output<List<ServerlessKubernetesDeleteOption>>? deleteOptions,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<bool>? enableRrsa,
    pulumi.Output<bool>? endpointPublicAccessEnabled,
    pulumi.Output<String>? kubeConfig,
    pulumi.Output<String>? loadBalancerSpec,
    pulumi.Output<String>? loggingType,
    pulumi.Output<ServerlessKubernetesMaintenanceWindow>? maintenanceWindow,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<bool>? newNatGateway,
    pulumi.Output<ServerlessKubernetesOperationPolicy>? operationPolicy,
    pulumi.Output<bool>? privateZone,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? retainResources,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? serviceCidr,
    pulumi.Output<List<String>>? serviceDiscoveryTypes,
    pulumi.Output<String>? slsProjectName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? timeZone,
    pulumi.Output<String>? version,
    pulumi.Output<String>? vpcId,
    pulumi.Output<List<String>>? vswitchIds,
    pulumi.Output<String>? zoneId,
  }) :
      addons = pulumi.Input.asOptionalInput<List<ServerlessKubernetesAddon>>(addons),
      clientCert = pulumi.Input.asOptionalInput<String>(clientCert),
      clientKey = pulumi.Input.asOptionalInput<String>(clientKey),
      clusterCaCert = pulumi.Input.asOptionalInput<String>(clusterCaCert),
      clusterSpec = pulumi.Input.asOptionalInput<String>(clusterSpec),
      customSan = pulumi.Input.asOptionalInput<String>(customSan),
      deleteOptions = pulumi.Input.asOptionalInput<List<ServerlessKubernetesDeleteOption>>(deleteOptions),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      enableRrsa = pulumi.Input.asOptionalInput<bool>(enableRrsa),
      endpointPublicAccessEnabled = pulumi.Input.asOptionalInput<bool>(endpointPublicAccessEnabled),
      kubeConfig = pulumi.Input.asOptionalInput<String>(kubeConfig),
      loadBalancerSpec = pulumi.Input.asOptionalInput<String>(loadBalancerSpec),
      loggingType = pulumi.Input.asOptionalInput<String>(loggingType),
      maintenanceWindow = pulumi.Input.asOptionalInput<ServerlessKubernetesMaintenanceWindow>(maintenanceWindow),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      newNatGateway = pulumi.Input.asOptionalInput<bool>(newNatGateway),
      operationPolicy = pulumi.Input.asOptionalInput<ServerlessKubernetesOperationPolicy>(operationPolicy),
      privateZone = pulumi.Input.asOptionalInput<bool>(privateZone),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      retainResources = pulumi.Input.asOptionalInput<List<String>>(retainResources),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      serviceCidr = pulumi.Input.asOptionalInput<String>(serviceCidr),
      serviceDiscoveryTypes = pulumi.Input.asOptionalInput<List<String>>(serviceDiscoveryTypes),
      slsProjectName = pulumi.Input.asOptionalInput<String>(slsProjectName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
      version = pulumi.Input.asOptionalInput<String>(version),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchIds = pulumi.Input.asOptionalInput<List<String>>(vswitchIds),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addons': ?pulumi.Input.mapOptionalInputValue<List<ServerlessKubernetesAddon>, List<Map<String, dynamic>>>(addons, (value) => pulumi.Input.encodeList<ServerlessKubernetesAddon, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientCert': ?clientCert,
      'clientKey': ?clientKey,
      'clusterCaCert': ?clusterCaCert,
      'clusterSpec': ?clusterSpec,
      'customSan': ?customSan,
      'deleteOptions': ?pulumi.Input.mapOptionalInputValue<List<ServerlessKubernetesDeleteOption>, List<Map<String, dynamic>>>(deleteOptions, (value) => pulumi.Input.encodeList<ServerlessKubernetesDeleteOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionProtection': ?deletionProtection,
      'enableRrsa': ?enableRrsa,
      'endpointPublicAccessEnabled': ?endpointPublicAccessEnabled,
      'kubeConfig': ?kubeConfig,
      'loadBalancerSpec': ?loadBalancerSpec,
      'loggingType': ?loggingType,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<ServerlessKubernetesMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'newNatGateway': ?newNatGateway,
      'operationPolicy': ?pulumi.Input.mapOptionalInputValue<ServerlessKubernetesOperationPolicy, Map<String, dynamic>>(operationPolicy, (value) => value.toMap()),
      'privateZone': ?privateZone,
      'resourceGroupId': ?resourceGroupId,
      'retainResources': ?retainResources,
      'securityGroupId': ?securityGroupId,
      'serviceCidr': ?serviceCidr,
      'serviceDiscoveryTypes': ?serviceDiscoveryTypes,
      'slsProjectName': ?slsProjectName,
      'tags': ?tags,
      'timeZone': ?timeZone,
      'version': ?version,
      'vpcId': ?vpcId,
      'vswitchIds': ?vswitchIds,
      'zoneId': ?zoneId,
    };
  }

  factory ServerlessKubernetesArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessKubernetesArgs(
      addons: map['addons'] == null ? null : pulumi.Output.create<List<ServerlessKubernetesAddon>>(pulumi.Input.decodeList<ServerlessKubernetesAddon>(map['addons'], (value) => ServerlessKubernetesAddon.fromMap((value as Map).cast<String, dynamic>()))),
      clientCert: map['clientCert'] == null ? null : pulumi.Output.create<String>(map['clientCert'] as String),
      clientKey: map['clientKey'] == null ? null : pulumi.Output.create<String>(map['clientKey'] as String),
      clusterCaCert: map['clusterCaCert'] == null ? null : pulumi.Output.create<String>(map['clusterCaCert'] as String),
      clusterSpec: map['clusterSpec'] == null ? null : pulumi.Output.create<String>(map['clusterSpec'] as String),
      customSan: map['customSan'] == null ? null : pulumi.Output.create<String>(map['customSan'] as String),
      deleteOptions: map['deleteOptions'] == null ? null : pulumi.Output.create<List<ServerlessKubernetesDeleteOption>>(pulumi.Input.decodeList<ServerlessKubernetesDeleteOption>(map['deleteOptions'], (value) => ServerlessKubernetesDeleteOption.fromMap((value as Map).cast<String, dynamic>()))),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      enableRrsa: map['enableRrsa'] == null ? null : pulumi.Output.create<bool>(map['enableRrsa'] as bool),
      endpointPublicAccessEnabled: map['endpointPublicAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['endpointPublicAccessEnabled'] as bool),
      kubeConfig: map['kubeConfig'] == null ? null : pulumi.Output.create<String>(map['kubeConfig'] as String),
      loadBalancerSpec: map['loadBalancerSpec'] == null ? null : pulumi.Output.create<String>(map['loadBalancerSpec'] as String),
      loggingType: map['loggingType'] == null ? null : pulumi.Output.create<String>(map['loggingType'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<ServerlessKubernetesMaintenanceWindow>(ServerlessKubernetesMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      newNatGateway: map['newNatGateway'] == null ? null : pulumi.Output.create<bool>(map['newNatGateway'] as bool),
      operationPolicy: map['operationPolicy'] == null ? null : pulumi.Output.create<ServerlessKubernetesOperationPolicy>(ServerlessKubernetesOperationPolicy.fromMap((map['operationPolicy'] as Map).cast<String, dynamic>())),
      privateZone: map['privateZone'] == null ? null : pulumi.Output.create<bool>(map['privateZone'] as bool),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      retainResources: map['retainResources'] == null ? null : pulumi.Output.create<List<String>>((map['retainResources'] as List).cast<String>()),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      serviceCidr: map['serviceCidr'] == null ? null : pulumi.Output.create<String>(map['serviceCidr'] as String),
      serviceDiscoveryTypes: map['serviceDiscoveryTypes'] == null ? null : pulumi.Output.create<List<String>>((map['serviceDiscoveryTypes'] as List).cast<String>()),
      slsProjectName: map['slsProjectName'] == null ? null : pulumi.Output.create<String>(map['slsProjectName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchIds: map['vswitchIds'] == null ? null : pulumi.Output.create<List<String>>((map['vswitchIds'] as List).cast<String>()),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

