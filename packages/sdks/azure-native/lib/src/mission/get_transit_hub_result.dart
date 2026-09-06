// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'transit_option_response.dart';

/// Result data returned by getTransitHub.
class GetTransitHubResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// List of resource ids modified by transitHubs.
  final List<String>? resourceCollection;
  /// The state of the transitHub.
  final String? state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The TransitOption of the transitHub.
  final TransitOptionResponse? transitOption;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetTransitHubResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [resourceCollection] List of resource ids modified by transitHubs.
  /// [state] The state of the transitHub.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [transitOption] The TransitOption of the transitHub.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetTransitHubResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.resourceCollection,
    this.state,
    this.systemData,
    this.tags,
    this.transitOption,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceCollection': ?resourceCollection,
      'state': ?state,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'transitOption': ?transitOption?.toMap(),
      'type': ?type,
    };
  }

  factory GetTransitHubResult.fromMap(Map<String, dynamic> map) {
    return GetTransitHubResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceCollection: (() { final guardedValue = map['resourceCollection']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transitOption: (() { final guardedValue = map['transitOption']; if (guardedValue == null) return null; return TransitOptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
