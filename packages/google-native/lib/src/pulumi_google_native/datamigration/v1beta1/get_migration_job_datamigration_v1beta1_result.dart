// ignore_for_file: unused_element, unnecessary_cast

import 'database_type_response_datamigration_v1beta1.dart';
import 'reverse_ssh_connectivity_response_datamigration_v1beta1.dart';
import 'status_response_datamigration_v1beta1.dart';
import 'vpc_peering_connectivity_response_datamigration_v1beta1.dart';

/// Result data returned by getMigrationJob.
class GetMigrationJobDatamigrationV1beta1Result {
  /// The timestamp when the migration job resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String createTime;

  /// The resource name (URI) of the destination connection profile.
  final String destination;

  /// The database engine type and provider of the destination.
  final DatabaseTypeResponseDatamigrationV1beta1 destinationDatabase;

  /// The migration job display name.
  final String displayName;

  /// The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  final String dumpPath;

  /// The duration of the migration job (in seconds). A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String duration;

  /// If the migration job is completed, the time when it was completed.
  final String endTime;

  /// The error details in case of state FAILED.
  final StatusResponseDatamigrationV1beta1 error;

  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Map<String, String> labels;

  /// The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  final String name;

  /// The current migration job phase.
  final String phase;

  /// The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  final ReverseSshConnectivityResponseDatamigrationV1beta1
      reverseSshConnectivity;

  /// The resource name (URI) of the source connection profile.
  final String source;

  /// The database engine type and provider of the source.
  final DatabaseTypeResponseDatamigrationV1beta1 sourceDatabase;

  /// The current migration job state.
  final String state;

  /// static ip connectivity data (default, no additional details needed).
  final Map<String, dynamic> staticIpConnectivity;

  /// The migration job type.
  final String type;

  /// The timestamp when the migration job resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String updateTime;

  /// The details of the VPC network that the source database is located in.
  final VpcPeeringConnectivityResponseDatamigrationV1beta1
      vpcPeeringConnectivity;

  GetMigrationJobDatamigrationV1beta1Result({
    required this.createTime,
    required this.destination,
    required this.destinationDatabase,
    required this.displayName,
    required this.dumpPath,
    required this.duration,
    required this.endTime,
    required this.error,
    required this.labels,
    required this.name,
    required this.phase,
    required this.reverseSshConnectivity,
    required this.source,
    required this.sourceDatabase,
    required this.state,
    required this.staticIpConnectivity,
    required this.type,
    required this.updateTime,
    required this.vpcPeeringConnectivity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['destination'] = destination;
    map['destinationDatabase'] = destinationDatabase.toMap();
    map['displayName'] = displayName;
    map['dumpPath'] = dumpPath;
    map['duration'] = duration;
    map['endTime'] = endTime;
    map['error'] = error.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['phase'] = phase;
    map['reverseSshConnectivity'] = reverseSshConnectivity.toMap();
    map['source'] = source;
    map['sourceDatabase'] = sourceDatabase.toMap();
    map['state'] = state;
    map['staticIpConnectivity'] = staticIpConnectivity;
    map['type'] = type;
    map['updateTime'] = updateTime;
    map['vpcPeeringConnectivity'] = vpcPeeringConnectivity.toMap();
    return map;
  }

  factory GetMigrationJobDatamigrationV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetMigrationJobDatamigrationV1beta1Result(
      createTime: map['createTime'] as String,
      destination: map['destination'] as String,
      destinationDatabase: DatabaseTypeResponseDatamigrationV1beta1.fromMap(
          (map['destinationDatabase'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      dumpPath: map['dumpPath'] as String,
      duration: map['duration'] as String,
      endTime: map['endTime'] as String,
      error: StatusResponseDatamigrationV1beta1.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      phase: map['phase'] as String,
      reverseSshConnectivity:
          ReverseSshConnectivityResponseDatamigrationV1beta1.fromMap(
              (map['reverseSshConnectivity'] as Map).cast<String, dynamic>()),
      source: map['source'] as String,
      sourceDatabase: DatabaseTypeResponseDatamigrationV1beta1.fromMap(
          (map['sourceDatabase'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      staticIpConnectivity:
          (map['staticIpConnectivity'] as Map).cast<String, dynamic>(),
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
      vpcPeeringConnectivity:
          VpcPeeringConnectivityResponseDatamigrationV1beta1.fromMap(
              (map['vpcPeeringConnectivity'] as Map).cast<String, dynamic>()),
    );
  }
}
