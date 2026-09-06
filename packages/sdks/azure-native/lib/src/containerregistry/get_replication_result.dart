// ignore_for_file: unused_element, unnecessary_cast

import 'status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getReplication.
class GetReplicationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource ID.
  final String? id;
  /// The location of the resource. This cannot be changed after the resource is created.
  final String? location;
  /// The name of the resource.
  final String? name;
  /// The provisioning state of the replication at the time the operation was called.
  final String? provisioningState;
  /// Specifies whether the replication's regional endpoint is enabled. Requests will not be routed to a replication whose regional endpoint is disabled, however its data will continue to be synced with other replications.
  final bool? regionEndpointEnabled;
  /// The status of the replication at the time the operation was called.
  final StatusResponse? status;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String? type;
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
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    bool? regionEndpointEnabled,
    this.status,
    this.systemData,
    this.tags,
    this.type,
    String? zoneRedundancy,
  }) : regionEndpointEnabled = regionEndpointEnabled ?? true, zoneRedundancy = zoneRedundancy ?? 'Disabled';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'regionEndpointEnabled': ?regionEndpointEnabled,
      'status': ?status?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'zoneRedundancy': ?zoneRedundancy,
    };
  }

  factory GetReplicationResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionEndpointEnabled: (() { final guardedValue = map['regionEndpointEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneRedundancy: (() { final guardedValue = map['zoneRedundancy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
