// ignore_for_file: unused_element, unnecessary_cast

import 'status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getReplication.
class GetReplicationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource ID.
  final String id;
  /// The location of the resource. This cannot be changed after the resource is created.
  final String location;
  /// The name of the resource.
  final String name;
  /// The provisioning state of the replication at the time the operation was called.
  final String provisioningState;
  /// Specifies whether the replication's regional endpoint is enabled. Requests will not be routed to a replication whose regional endpoint is disabled, however its data will continue to be synced with other replications.
  final bool? regionEndpointEnabled;
  /// The status of the replication at the time the operation was called.
  final StatusResponse status;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;
  /// Whether or not zone redundancy is enabled for this container registry replication
  final String? zoneRedundancy;

  /// Creates a new [GetReplicationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource ID.
  /// [location] The location of the resource. This cannot be changed after the resource is created.
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning state of the replication at the time the operation was called.
  /// [regionEndpointEnabled] Specifies whether the replication's regional endpoint is enabled. Requests will not be routed to a replication whose regional endpoint is disabled, however its data will continue to be synced with other replications.
  /// [status] The status of the replication at the time the operation was called.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  /// [zoneRedundancy] Whether or not zone redundancy is enabled for this container registry replication
  GetReplicationResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.regionEndpointEnabled,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
    this.zoneRedundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'regionEndpointEnabled': ?regionEndpointEnabled,
      'status': status.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'zoneRedundancy': ?zoneRedundancy,
    };
  }

  factory GetReplicationResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      regionEndpointEnabled: (() { final guardedValue = map['regionEndpointEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      status: StatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      zoneRedundancy: (() { final guardedValue = map['zoneRedundancy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

