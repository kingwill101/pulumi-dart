// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkloadNetworkPortMirroring.
class GetWorkloadNetworkPortMirroringResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Destination VM Group.
  final String? destination;
  /// Direction of port mirroring profile.
  final String? direction;
  /// Display name of the port mirroring profile.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The provisioning state
  final String provisioningState;
  /// NSX revision number.
  final double? revision;
  /// Source VM Group.
  final String? source;
  /// Port Mirroring Status.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkloadNetworkPortMirroringResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [destination] Destination VM Group.
  /// [direction] Direction of port mirroring profile.
  /// [displayName] Display name of the port mirroring profile.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state
  /// [revision] NSX revision number.
  /// [source] Source VM Group.
  /// [status] Port Mirroring Status.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWorkloadNetworkPortMirroringResult({
    required this.azureApiVersion,
    this.destination,
    this.direction,
    this.displayName,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.revision,
    this.source,
    required this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'destination': ?destination,
      'direction': ?direction,
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'revision': ?revision,
      'source': ?source,
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetWorkloadNetworkPortMirroringResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkPortMirroringResult(
      azureApiVersion: map['azureApiVersion'] as String,
      destination: map['destination'] == null ? null : map['destination'] as String,
      direction: map['direction'] == null ? null : map['direction'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      revision: map['revision'] == null ? null : map['revision'] as double,
      source: map['source'] == null ? null : map['source'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

