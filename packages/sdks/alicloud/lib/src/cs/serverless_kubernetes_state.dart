// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_kubernetes_addon.dart';
import 'serverless_kubernetes_delete_option.dart';
import 'serverless_kubernetes_maintenance_window.dart';
import 'serverless_kubernetes_operation_policy.dart';
import 'serverless_kubernetes_rrsa_metadata.dart';

/// Input properties used for looking up and filtering ServerlessKubernetes resources.
class ServerlessKubernetesState {
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
  /// Nested attribute containing RRSA related data for your cluster.
  final pulumi.Input<ServerlessKubernetesRrsaMetadata>? rrsaMetadata;
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

  /// Creates a new [ServerlessKubernetesState].
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
  /// [rrsaMetadata] Nested attribute containing RRSA related data for your cluster.
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
  ServerlessKubernetesState({
    this.addons,
    this.clientCert,
    this.clientKey,
    this.clusterCaCert,
    this.clusterSpec,
    this.customSan,
    this.deleteOptions,
    this.deletionProtection,
    this.enableRrsa,
    this.endpointPublicAccessEnabled,
    this.kubeConfig,
    this.loadBalancerSpec,
    this.loggingType,
    this.maintenanceWindow,
    this.name,
    this.namePrefix,
    this.newNatGateway,
    this.operationPolicy,
    this.privateZone,
    this.resourceGroupId,
    this.retainResources,
    this.rrsaMetadata,
    this.securityGroupId,
    this.serviceCidr,
    this.serviceDiscoveryTypes,
    this.slsProjectName,
    this.tags,
    this.timeZone,
    this.version,
    this.vpcId,
    this.vswitchIds,
    this.zoneId,
  });

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
      'rrsaMetadata': ?pulumi.Input.mapOptionalInputValue<ServerlessKubernetesRrsaMetadata, Map<String, dynamic>>(rrsaMetadata, (value) => value.toMap()),
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

  factory ServerlessKubernetesState.fromMap(Map<String, dynamic> map) {
    return ServerlessKubernetesState(
      addons: map['addons'] == null ? null : (pulumi.Input.decodeList<ServerlessKubernetesAddon>(map['addons'], (value) => ServerlessKubernetesAddon.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clientCert: map['clientCert'] == null ? null : (map['clientCert'] as String).input(),
      clientKey: map['clientKey'] == null ? null : (map['clientKey'] as String).input(),
      clusterCaCert: map['clusterCaCert'] == null ? null : (map['clusterCaCert'] as String).input(),
      clusterSpec: map['clusterSpec'] == null ? null : (map['clusterSpec'] as String).input(),
      customSan: map['customSan'] == null ? null : (map['customSan'] as String).input(),
      deleteOptions: map['deleteOptions'] == null ? null : (pulumi.Input.decodeList<ServerlessKubernetesDeleteOption>(map['deleteOptions'], (value) => ServerlessKubernetesDeleteOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      enableRrsa: map['enableRrsa'] == null ? null : (map['enableRrsa'] as bool).input(),
      endpointPublicAccessEnabled: map['endpointPublicAccessEnabled'] == null ? null : (map['endpointPublicAccessEnabled'] as bool).input(),
      kubeConfig: map['kubeConfig'] == null ? null : (map['kubeConfig'] as String).input(),
      loadBalancerSpec: map['loadBalancerSpec'] == null ? null : (map['loadBalancerSpec'] as String).input(),
      loggingType: map['loggingType'] == null ? null : (map['loggingType'] as String).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (ServerlessKubernetesMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      newNatGateway: map['newNatGateway'] == null ? null : (map['newNatGateway'] as bool).input(),
      operationPolicy: map['operationPolicy'] == null ? null : (ServerlessKubernetesOperationPolicy.fromMap((map['operationPolicy'] as Map).cast<String, dynamic>())).input(),
      privateZone: map['privateZone'] == null ? null : (map['privateZone'] as bool).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      retainResources: map['retainResources'] == null ? null : ((map['retainResources'] as List).cast<String>()).input(),
      rrsaMetadata: map['rrsaMetadata'] == null ? null : (ServerlessKubernetesRrsaMetadata.fromMap((map['rrsaMetadata'] as Map).cast<String, dynamic>())).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      serviceCidr: map['serviceCidr'] == null ? null : (map['serviceCidr'] as String).input(),
      serviceDiscoveryTypes: map['serviceDiscoveryTypes'] == null ? null : ((map['serviceDiscoveryTypes'] as List).cast<String>()).input(),
      slsProjectName: map['slsProjectName'] == null ? null : (map['slsProjectName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchIds: map['vswitchIds'] == null ? null : ((map['vswitchIds'] as List).cast<String>()).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

