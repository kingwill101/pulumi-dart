// ignore_for_file: unused_element, unnecessary_cast

import 'export_route_policy_information_response.dart';
import 'import_route_policy_information_response.dart';
import 'layer2_configuration_response.dart';
import 'network_to_network_interconnect_properties_response_option_blayer3_configuration.dart';
import 'npb_static_route_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNetworkToNetworkInterconnect.
class GetNetworkToNetworkInterconnectResult {
  /// Administrative state of the resource.
  final String administrativeState;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration state of the resource.
  final String configurationState;
  /// Egress Acl. ARM resource ID of Access Control Lists.
  final String? egressAclId;
  /// Export Route Policy configuration.
  final ExportRoutePolicyInformationResponse? exportRoutePolicy;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Import Route Policy configuration.
  final ImportRoutePolicyInformationResponse? importRoutePolicy;
  /// Ingress Acl. ARM resource ID of Access Control Lists.
  final String? ingressAclId;
  /// Configuration to use NNI for Infrastructure Management. Example: True/False.
  final String? isManagementType;
  /// Common properties for Layer2 Configuration.
  final Layer2ConfigurationResponse? layer2Configuration;
  /// The name of the resource
  final String name;
  /// Type of NNI used. Example: CE | NPB
  final String? nniType;
  /// NPB Static Route Configuration properties.
  final NpbStaticRouteConfigurationResponse? npbStaticRouteConfiguration;
  /// Common properties for Layer3Configuration.
  final NetworkToNetworkInterconnectPropertiesResponseOptionBLayer3Configuration? optionBLayer3Configuration;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Based on this option layer3 parameters are mandatory. Example: True/False
  final String useOptionB;

  /// Creates a new [GetNetworkToNetworkInterconnectResult].
  /// [administrativeState] Administrative state of the resource.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [egressAclId] Egress Acl. ARM resource ID of Access Control Lists.
  /// [exportRoutePolicy] Export Route Policy configuration.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [importRoutePolicy] Import Route Policy configuration.
  /// [ingressAclId] Ingress Acl. ARM resource ID of Access Control Lists.
  /// [isManagementType] Configuration to use NNI for Infrastructure Management. Example: True/False.
  /// [layer2Configuration] Common properties for Layer2 Configuration.
  /// [name] The name of the resource
  /// [nniType] Type of NNI used. Example: CE | NPB
  /// [npbStaticRouteConfiguration] NPB Static Route Configuration properties.
  /// [optionBLayer3Configuration] Common properties for Layer3Configuration.
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [useOptionB] Based on this option layer3 parameters are mandatory. Example: True/False
  GetNetworkToNetworkInterconnectResult({
    required this.administrativeState,
    required this.azureApiVersion,
    required this.configurationState,
    this.egressAclId,
    this.exportRoutePolicy,
    required this.id,
    this.importRoutePolicy,
    this.ingressAclId,
    this.isManagementType,
    this.layer2Configuration,
    required this.name,
    this.nniType,
    this.npbStaticRouteConfiguration,
    this.optionBLayer3Configuration,
    required this.provisioningState,
    required this.systemData,
    required this.type,
    required this.useOptionB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'azureApiVersion': azureApiVersion,
      'configurationState': configurationState,
      'egressAclId': ?egressAclId,
      'exportRoutePolicy': ?exportRoutePolicy == null ? null : exportRoutePolicy!.toMap(),
      'id': id,
      'importRoutePolicy': ?importRoutePolicy == null ? null : importRoutePolicy!.toMap(),
      'ingressAclId': ?ingressAclId,
      'isManagementType': ?isManagementType,
      'layer2Configuration': ?layer2Configuration == null ? null : layer2Configuration!.toMap(),
      'name': name,
      'nniType': ?nniType,
      'npbStaticRouteConfiguration': ?npbStaticRouteConfiguration == null ? null : npbStaticRouteConfiguration!.toMap(),
      'optionBLayer3Configuration': ?optionBLayer3Configuration == null ? null : optionBLayer3Configuration!.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
      'useOptionB': useOptionB,
    };
  }

  factory GetNetworkToNetworkInterconnectResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkToNetworkInterconnectResult(
      administrativeState: map['administrativeState'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      configurationState: map['configurationState'] as String,
      egressAclId: map['egressAclId'] == null ? null : map['egressAclId'] as String,
      exportRoutePolicy: map['exportRoutePolicy'] == null ? null : ExportRoutePolicyInformationResponse.fromMap((map['exportRoutePolicy'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      importRoutePolicy: map['importRoutePolicy'] == null ? null : ImportRoutePolicyInformationResponse.fromMap((map['importRoutePolicy'] as Map).cast<String, dynamic>()),
      ingressAclId: map['ingressAclId'] == null ? null : map['ingressAclId'] as String,
      isManagementType: map['isManagementType'] == null ? null : map['isManagementType'] as String,
      layer2Configuration: map['layer2Configuration'] == null ? null : Layer2ConfigurationResponse.fromMap((map['layer2Configuration'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nniType: map['nniType'] == null ? null : map['nniType'] as String,
      npbStaticRouteConfiguration: map['npbStaticRouteConfiguration'] == null ? null : NpbStaticRouteConfigurationResponse.fromMap((map['npbStaticRouteConfiguration'] as Map).cast<String, dynamic>()),
      optionBLayer3Configuration: map['optionBLayer3Configuration'] == null ? null : NetworkToNetworkInterconnectPropertiesResponseOptionBLayer3Configuration.fromMap((map['optionBLayer3Configuration'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      useOptionB: map['useOptionB'] as String,
    );
  }
}

