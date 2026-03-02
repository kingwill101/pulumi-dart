// ignore_for_file: unused_element, unnecessary_cast

import 'neighbor_group_destination_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNeighborGroup.
class GetNeighborGroupResult {
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// An array of destination IPv4 Addresses or IPv6 Addresses.
  final NeighborGroupDestinationResponse destination;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// List of NetworkTap IDs where neighbor group is associated.
  final List<String> networkTapIds;
  /// List of Network Tap Rule IDs where neighbor group is associated.
  final List<String> networkTapRuleIds;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetNeighborGroupResult({
    this.annotation,
    required this.azureApiVersion,
    required this.destination,
    required this.id,
    required this.location,
    required this.name,
    required this.networkTapIds,
    required this.networkTapRuleIds,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'destination': destination.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'networkTapIds': networkTapIds,
      'networkTapRuleIds': networkTapRuleIds,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNeighborGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNeighborGroupResult(
      annotation: map['annotation'] == null ? null : map['annotation']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      destination: NeighborGroupDestinationResponse.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkTapIds: (map['networkTapIds'] as List).cast<String>(),
      networkTapRuleIds: (map['networkTapRuleIds'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

