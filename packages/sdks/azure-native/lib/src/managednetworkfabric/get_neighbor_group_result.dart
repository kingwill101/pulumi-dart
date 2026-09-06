// ignore_for_file: unused_element, unnecessary_cast

import 'neighbor_group_destination_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNeighborGroup.
class GetNeighborGroupResult {
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// An array of destination IPv4 Addresses or IPv6 Addresses.
  final NeighborGroupDestinationResponse? destination;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// List of NetworkTap IDs where neighbor group is associated.
  final List<String>? networkTapIds;
  /// List of Network Tap Rule IDs where neighbor group is associated.
  final List<String>? networkTapRuleIds;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetNeighborGroupResult].
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [destination] An array of destination IPv4 Addresses or IPv6 Addresses.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkTapIds] List of NetworkTap IDs where neighbor group is associated.
  /// [networkTapRuleIds] List of Network Tap Rule IDs where neighbor group is associated.
  /// [provisioningState] The provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetNeighborGroupResult({
    this.annotation,
    this.azureApiVersion,
    this.destination,
    this.id,
    this.location,
    this.name,
    this.networkTapIds,
    this.networkTapRuleIds,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'azureApiVersion': ?azureApiVersion,
      'destination': ?destination?.toMap(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkTapIds': ?networkTapIds,
      'networkTapRuleIds': ?networkTapRuleIds,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetNeighborGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNeighborGroupResult(
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return NeighborGroupDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkTapIds: (() { final guardedValue = map['networkTapIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      networkTapRuleIds: (() { final guardedValue = map['networkTapRuleIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
