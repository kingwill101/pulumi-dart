// ignore_for_file: unused_element, unnecessary_cast

import 'export_route_policy_response.dart';
import 'external_network_properties_response_option_aproperties.dart';
import 'import_route_policy_response.dart';
import 'l3_option_bproperties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getExternalNetwork.
class GetExternalNetworkResult {
  /// Administrative state of the resource.
  final String administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration state of the resource.
  final String configurationState;
  /// Export Route Policy either IPv4 or IPv6.
  final ExportRoutePolicyResponse? exportRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  final String? exportRoutePolicyId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Import Route Policy either IPv4 or IPv6.
  final ImportRoutePolicyResponse? importRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  final String? importRoutePolicyId;
  /// The name of the resource
  final String name;
  /// ARM Resource ID of the networkToNetworkInterconnectId of the ExternalNetwork resource.
  final String? networkToNetworkInterconnectId;
  /// option A properties object
  final ExternalNetworkPropertiesResponseOptionAProperties? optionAProperties;
  /// option B properties object
  final L3OptionBPropertiesResponse? optionBProperties;
  /// Peering option list.
  final String peeringOption;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetExternalNetworkResult({
    required this.administrativeState,
    this.annotation,
    required this.azureApiVersion,
    required this.configurationState,
    this.exportRoutePolicy,
    this.exportRoutePolicyId,
    required this.id,
    this.importRoutePolicy,
    this.importRoutePolicyId,
    required this.name,
    this.networkToNetworkInterconnectId,
    this.optionAProperties,
    this.optionBProperties,
    required this.peeringOption,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'configurationState': configurationState,
      'exportRoutePolicy': ?exportRoutePolicy == null ? null : exportRoutePolicy!.toMap(),
      'exportRoutePolicyId': ?exportRoutePolicyId,
      'id': id,
      'importRoutePolicy': ?importRoutePolicy == null ? null : importRoutePolicy!.toMap(),
      'importRoutePolicyId': ?importRoutePolicyId,
      'name': name,
      'networkToNetworkInterconnectId': ?networkToNetworkInterconnectId,
      'optionAProperties': ?optionAProperties == null ? null : optionAProperties!.toMap(),
      'optionBProperties': ?optionBProperties == null ? null : optionBProperties!.toMap(),
      'peeringOption': peeringOption,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetExternalNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetExternalNetworkResult(
      administrativeState: map['administrativeState'] as String,
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      configurationState: map['configurationState'] as String,
      exportRoutePolicy: map['exportRoutePolicy'] == null ? null : ExportRoutePolicyResponse.fromMap((map['exportRoutePolicy'] as Map).cast<String, dynamic>()),
      exportRoutePolicyId: map['exportRoutePolicyId'] == null ? null : map['exportRoutePolicyId'] as String,
      id: map['id'] as String,
      importRoutePolicy: map['importRoutePolicy'] == null ? null : ImportRoutePolicyResponse.fromMap((map['importRoutePolicy'] as Map).cast<String, dynamic>()),
      importRoutePolicyId: map['importRoutePolicyId'] == null ? null : map['importRoutePolicyId'] as String,
      name: map['name'] as String,
      networkToNetworkInterconnectId: map['networkToNetworkInterconnectId'] == null ? null : map['networkToNetworkInterconnectId'] as String,
      optionAProperties: map['optionAProperties'] == null ? null : ExternalNetworkPropertiesResponseOptionAProperties.fromMap((map['optionAProperties'] as Map).cast<String, dynamic>()),
      optionBProperties: map['optionBProperties'] == null ? null : L3OptionBPropertiesResponse.fromMap((map['optionBProperties'] as Map).cast<String, dynamic>()),
      peeringOption: map['peeringOption'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

