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
  final String? administrativeState;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Configuration state of the resource.
  final String? configurationState;
  /// Egress Acl. ARM resource ID of Access Control Lists.
  final String? egressAclId;
  /// Export Route Policy configuration.
  final ExportRoutePolicyInformationResponse? exportRoutePolicy;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Import Route Policy configuration.
  final ImportRoutePolicyInformationResponse? importRoutePolicy;
  /// Ingress Acl. ARM resource ID of Access Control Lists.
  final String? ingressAclId;
  /// Configuration to use NNI for Infrastructure Management. Example: True/False.
  final String? isManagementType;
  /// Common properties for Layer2 Configuration.
  final Layer2ConfigurationResponse? layer2Configuration;
  /// The name of the resource
  final String? name;
  /// Type of NNI used. Example: CE | NPB
  final String? nniType;
  /// NPB Static Route Configuration properties.
  final NpbStaticRouteConfigurationResponse? npbStaticRouteConfiguration;
  /// Common properties for Layer3Configuration.
  final NetworkToNetworkInterconnectPropertiesResponseOptionBLayer3Configuration? optionBLayer3Configuration;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Based on this option layer3 parameters are mandatory. Example: True/False
  final String? useOptionB;

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
    this.administrativeState,
    this.azureApiVersion,
    this.configurationState,
    this.egressAclId,
    this.exportRoutePolicy,
    this.id,
    this.importRoutePolicy,
    this.ingressAclId,
    String? isManagementType,
    this.layer2Configuration,
    this.name,
    String? nniType,
    this.npbStaticRouteConfiguration,
    this.optionBLayer3Configuration,
    this.provisioningState,
    this.systemData,
    this.type,
    this.useOptionB,
  }) : isManagementType = isManagementType ?? 'True', nniType = nniType ?? 'CE';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': ?administrativeState,
      'azureApiVersion': ?azureApiVersion,
      'configurationState': ?configurationState,
      'egressAclId': ?egressAclId,
      'exportRoutePolicy': ?exportRoutePolicy?.toMap(),
      'id': ?id,
      'importRoutePolicy': ?importRoutePolicy?.toMap(),
      'ingressAclId': ?ingressAclId,
      'isManagementType': ?isManagementType,
      'layer2Configuration': ?layer2Configuration?.toMap(),
      'name': ?name,
      'nniType': ?nniType,
      'npbStaticRouteConfiguration': ?npbStaticRouteConfiguration?.toMap(),
      'optionBLayer3Configuration': ?optionBLayer3Configuration?.toMap(),
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'useOptionB': ?useOptionB,
    };
  }

  factory GetNetworkToNetworkInterconnectResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkToNetworkInterconnectResult(
      administrativeState: (() { final guardedValue = map['administrativeState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationState: (() { final guardedValue = map['configurationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      egressAclId: (() { final guardedValue = map['egressAclId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exportRoutePolicy: (() { final guardedValue = map['exportRoutePolicy']; if (guardedValue == null) return null; return ExportRoutePolicyInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importRoutePolicy: (() { final guardedValue = map['importRoutePolicy']; if (guardedValue == null) return null; return ImportRoutePolicyInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ingressAclId: (() { final guardedValue = map['ingressAclId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isManagementType: (() { final guardedValue = map['isManagementType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      layer2Configuration: (() { final guardedValue = map['layer2Configuration']; if (guardedValue == null) return null; return Layer2ConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nniType: (() { final guardedValue = map['nniType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      npbStaticRouteConfiguration: (() { final guardedValue = map['npbStaticRouteConfiguration']; if (guardedValue == null) return null; return NpbStaticRouteConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      optionBLayer3Configuration: (() { final guardedValue = map['optionBLayer3Configuration']; if (guardedValue == null) return null; return NetworkToNetworkInterconnectPropertiesResponseOptionBLayer3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useOptionB: (() { final guardedValue = map['useOptionB']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
