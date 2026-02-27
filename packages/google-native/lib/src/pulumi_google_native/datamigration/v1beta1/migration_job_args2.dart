// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'database_type3.dart';
import 'migration_job_state2.dart';
import 'migration_job_type2.dart';
import 'reverse_ssh_connectivity2.dart';
import 'vpc_peering_connectivity2.dart';

/// The set of arguments for MigrationJob.
class MigrationJobArgs2 {
  /// The resource name (URI) of the destination connection profile.
  final Input<String> destination;

  /// The database engine type and provider of the destination.
  final Input<DatabaseType3>? destinationDatabase;

  /// The migration job display name.
  final Input<String>? displayName;

  /// The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  final Input<String>? dumpPath;

  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Required. The ID of the instance to create.
  final Input<String> migrationJobId;

  /// The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  final Input<String>? name;
  final Input<String>? project;

  /// A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final Input<String>? requestId;

  /// The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  final Input<ReverseSshConnectivity2>? reverseSshConnectivity;

  /// The resource name (URI) of the source connection profile.
  final Input<String> source;

  /// The database engine type and provider of the source.
  final Input<DatabaseType3>? sourceDatabase;

  /// The current migration job state.
  final Input<MigrationJobState2>? state;

  /// static ip connectivity data (default, no additional details needed).
  final Input<Map<String, dynamic>>? staticIpConnectivity;

  /// The migration job type.
  final Input<MigrationJobType2> type;

  /// The details of the VPC network that the source database is located in.
  final Input<VpcPeeringConnectivity2>? vpcPeeringConnectivity;

  MigrationJobArgs2({
    required this.destination,
    this.destinationDatabase,
    this.displayName,
    this.dumpPath,
    this.labels,
    this.location,
    required this.migrationJobId,
    this.name,
    this.project,
    this.requestId,
    this.reverseSshConnectivity,
    required this.source,
    this.sourceDatabase,
    this.state,
    this.staticIpConnectivity,
    required this.type,
    this.vpcPeeringConnectivity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = destination;
    final destinationDatabaseValue = destinationDatabase;
    if (destinationDatabaseValue != null) {
      map['destinationDatabase'] =
          Input.mapOptionalInputValue<DatabaseType3, Map<String, dynamic>>(
              destinationDatabaseValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final dumpPathValue = dumpPath;
    if (dumpPathValue != null) {
      map['dumpPath'] = dumpPathValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['migrationJobId'] = migrationJobId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final reverseSshConnectivityValue = reverseSshConnectivity;
    if (reverseSshConnectivityValue != null) {
      map['reverseSshConnectivity'] = Input.mapOptionalInputValue<
              ReverseSshConnectivity2, Map<String, dynamic>>(
          reverseSshConnectivityValue, (value) => value.toMap());
    }
    map['source'] = source;
    final sourceDatabaseValue = sourceDatabase;
    if (sourceDatabaseValue != null) {
      map['sourceDatabase'] =
          Input.mapOptionalInputValue<DatabaseType3, Map<String, dynamic>>(
              sourceDatabaseValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = Input.mapOptionalInputValue<MigrationJobState2, String>(
          stateValue, (value) => value.value);
    }
    final staticIpConnectivityValue = staticIpConnectivity;
    if (staticIpConnectivityValue != null) {
      map['staticIpConnectivity'] = staticIpConnectivityValue;
    }
    map['type'] = Input.mapInputValue<MigrationJobType2, String>(
        type, (value) => value.value);
    final vpcPeeringConnectivityValue = vpcPeeringConnectivity;
    if (vpcPeeringConnectivityValue != null) {
      map['vpcPeeringConnectivity'] = Input.mapOptionalInputValue<
              VpcPeeringConnectivity2, Map<String, dynamic>>(
          vpcPeeringConnectivityValue, (value) => value.toMap());
    }
    return map;
  }

  factory MigrationJobArgs2.fromMap(Map<String, dynamic> map) {
    return MigrationJobArgs2(
      destination: Input.asInput<String>(map['destination']),
      destinationDatabase:
          Input.asOptionalInput<DatabaseType3>(map['destinationDatabase']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      dumpPath: Input.asOptionalInput<String>(map['dumpPath']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      migrationJobId: Input.asInput<String>(map['migrationJobId']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      reverseSshConnectivity: Input.asOptionalInput<ReverseSshConnectivity2>(
          map['reverseSshConnectivity']),
      source: Input.asInput<String>(map['source']),
      sourceDatabase:
          Input.asOptionalInput<DatabaseType3>(map['sourceDatabase']),
      state: Input.asOptionalInput<MigrationJobState2>(map['state']),
      staticIpConnectivity: Input.asOptionalInput<Map<String, dynamic>>(
          map['staticIpConnectivity']),
      type: Input.asInput<MigrationJobType2>(map['type']),
      vpcPeeringConnectivity: Input.asOptionalInput<VpcPeeringConnectivity2>(
          map['vpcPeeringConnectivity']),
    );
  }
}
