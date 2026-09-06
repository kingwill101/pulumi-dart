// ignore_for_file: unused_element, unnecessary_cast

import 'export_route_policy_response.dart';
import 'external_network_properties_response_option_aproperties.dart';
import 'import_route_policy_response.dart';
import 'l3_option_bproperties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getExternalNetwork.
class GetExternalNetworkResult {
  /// Administrative state of the resource.
  final String? administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Configuration state of the resource.
  final String? configurationState;
  /// Export Route Policy either IPv4 or IPv6.
  final ExportRoutePolicyResponse? exportRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  final String? exportRoutePolicyId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Import Route Policy either IPv4 or IPv6.
  final ImportRoutePolicyResponse? importRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  final String? importRoutePolicyId;
  /// The name of the resource
  final String? name;
  /// ARM Resource ID of the networkToNetworkInterconnectId of the ExternalNetwork resource.
  final String? networkToNetworkInterconnectId;
  /// option A properties object
  final ExternalNetworkPropertiesResponseOptionAProperties? optionAProperties;
  /// option B properties object
  final L3OptionBPropertiesResponse? optionBProperties;
  /// Peering option list.
  final String? peeringOption;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetExternalNetworkResult].
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [exportRoutePolicy] Export Route Policy either IPv4 or IPv6.
  /// [exportRoutePolicyId] ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [importRoutePolicy] Import Route Policy either IPv4 or IPv6.
  /// [importRoutePolicyId] ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  /// [name] The name of the resource
  /// [networkToNetworkInterconnectId] ARM Resource ID of the networkToNetworkInterconnectId of the ExternalNetwork resource.
  /// [optionAProperties] option A properties object
  /// [optionBProperties] option B properties object
  /// [peeringOption] Peering option list.
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetExternalNetworkResult({
    this.administrativeState,
    this.annotation,
    this.azureApiVersion,
    this.configurationState,
    this.exportRoutePolicy,
    this.exportRoutePolicyId,
    this.id,
    this.importRoutePolicy,
    this.importRoutePolicyId,
    this.name,
    this.networkToNetworkInterconnectId,
    this.optionAProperties,
    this.optionBProperties,
    this.peeringOption,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': ?administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': ?azureApiVersion,
      'configurationState': ?configurationState,
      'exportRoutePolicy': ?exportRoutePolicy?.toMap(),
      'exportRoutePolicyId': ?exportRoutePolicyId,
      'id': ?id,
      'importRoutePolicy': ?importRoutePolicy?.toMap(),
      'importRoutePolicyId': ?importRoutePolicyId,
      'name': ?name,
      'networkToNetworkInterconnectId': ?networkToNetworkInterconnectId,
      'optionAProperties': ?optionAProperties?.toMap(),
      'optionBProperties': ?optionBProperties?.toMap(),
      'peeringOption': ?peeringOption,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetExternalNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetExternalNetworkResult(
      administrativeState: (() { final guardedValue = map['administrativeState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationState: (() { final guardedValue = map['configurationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exportRoutePolicy: (() { final guardedValue = map['exportRoutePolicy']; if (guardedValue == null) return null; return ExportRoutePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      exportRoutePolicyId: (() { final guardedValue = map['exportRoutePolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importRoutePolicy: (() { final guardedValue = map['importRoutePolicy']; if (guardedValue == null) return null; return ImportRoutePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      importRoutePolicyId: (() { final guardedValue = map['importRoutePolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkToNetworkInterconnectId: (() { final guardedValue = map['networkToNetworkInterconnectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      optionAProperties: (() { final guardedValue = map['optionAProperties']; if (guardedValue == null) return null; return ExternalNetworkPropertiesResponseOptionAProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      optionBProperties: (() { final guardedValue = map['optionBProperties']; if (guardedValue == null) return null; return L3OptionBPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      peeringOption: (() { final guardedValue = map['peeringOption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
