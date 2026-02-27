// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_type_datamigration_v1beta1.dart';
import 'migration_job_state_datamigration_v1beta1.dart';
import 'migration_job_type_datamigration_v1beta1.dart';
import 'reverse_ssh_connectivity_datamigration_v1beta1.dart';
import 'vpc_peering_connectivity_datamigration_v1beta1.dart';

/// The set of arguments for MigrationJob.
class MigrationJobDatamigrationV1beta1Args {
  /// The resource name (URI) of the destination connection profile.
  final pulumi.Input<String> destination;

  /// The database engine type and provider of the destination.
  final pulumi.Input<DatabaseTypeDatamigrationV1beta1>? destinationDatabase;

  /// The migration job display name.
  final pulumi.Input<String>? displayName;

  /// The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  final pulumi.Input<String>? dumpPath;

  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Required. The ID of the instance to create.
  final pulumi.Input<String> migrationJobId;

  /// The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;

  /// The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  final pulumi.Input<ReverseSshConnectivityDatamigrationV1beta1>?
      reverseSshConnectivity;

  /// The resource name (URI) of the source connection profile.
  final pulumi.Input<String> source;

  /// The database engine type and provider of the source.
  final pulumi.Input<DatabaseTypeDatamigrationV1beta1>? sourceDatabase;

  /// The current migration job state.
  final pulumi.Input<MigrationJobStateDatamigrationV1beta1>? state;

  /// static ip connectivity data (default, no additional details needed).
  final pulumi.Input<Map<String, dynamic>>? staticIpConnectivity;

  /// The migration job type.
  final pulumi.Input<MigrationJobTypeDatamigrationV1beta1> type;

  /// The details of the VPC network that the source database is located in.
  final pulumi.Input<VpcPeeringConnectivityDatamigrationV1beta1>?
      vpcPeeringConnectivity;

  MigrationJobDatamigrationV1beta1Args({
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
      map['destinationDatabase'] = pulumi.Input.mapOptionalInputValue<
              DatabaseTypeDatamigrationV1beta1, Map<String, dynamic>>(
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
      map['reverseSshConnectivity'] = pulumi.Input.mapOptionalInputValue<
              ReverseSshConnectivityDatamigrationV1beta1, Map<String, dynamic>>(
          reverseSshConnectivityValue, (value) => value.toMap());
    }
    map['source'] = source;
    final sourceDatabaseValue = sourceDatabase;
    if (sourceDatabaseValue != null) {
      map['sourceDatabase'] = pulumi.Input.mapOptionalInputValue<
          DatabaseTypeDatamigrationV1beta1,
          Map<String, dynamic>>(sourceDatabaseValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = pulumi.Input.mapOptionalInputValue<
          MigrationJobStateDatamigrationV1beta1,
          String>(stateValue, (value) => value.value);
    }
    final staticIpConnectivityValue = staticIpConnectivity;
    if (staticIpConnectivityValue != null) {
      map['staticIpConnectivity'] = staticIpConnectivityValue;
    }
    map['type'] = pulumi.Input.mapInputValue<
        MigrationJobTypeDatamigrationV1beta1,
        String>(type, (value) => value.value);
    final vpcPeeringConnectivityValue = vpcPeeringConnectivity;
    if (vpcPeeringConnectivityValue != null) {
      map['vpcPeeringConnectivity'] = pulumi.Input.mapOptionalInputValue<
              VpcPeeringConnectivityDatamigrationV1beta1, Map<String, dynamic>>(
          vpcPeeringConnectivityValue, (value) => value.toMap());
    }
    return map;
  }

  factory MigrationJobDatamigrationV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return MigrationJobDatamigrationV1beta1Args(
      destination: pulumi.Input.asInput<String>(map['destination']),
      destinationDatabase:
          pulumi.Input.asOptionalInput<DatabaseTypeDatamigrationV1beta1>(
              map['destinationDatabase']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      dumpPath: pulumi.Input.asOptionalInput<String>(map['dumpPath']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      migrationJobId: pulumi.Input.asInput<String>(map['migrationJobId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      reverseSshConnectivity: pulumi.Input.asOptionalInput<
              ReverseSshConnectivityDatamigrationV1beta1>(
          map['reverseSshConnectivity']),
      source: pulumi.Input.asInput<String>(map['source']),
      sourceDatabase:
          pulumi.Input.asOptionalInput<DatabaseTypeDatamigrationV1beta1>(
              map['sourceDatabase']),
      state:
          pulumi.Input.asOptionalInput<MigrationJobStateDatamigrationV1beta1>(
              map['state']),
      staticIpConnectivity: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['staticIpConnectivity']),
      type: pulumi.Input.asInput<MigrationJobTypeDatamigrationV1beta1>(
          map['type']),
      vpcPeeringConnectivity: pulumi.Input.asOptionalInput<
              VpcPeeringConnectivityDatamigrationV1beta1>(
          map['vpcPeeringConnectivity']),
    );
  }
}
