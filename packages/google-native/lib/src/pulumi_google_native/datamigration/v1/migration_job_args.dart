// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversion_workspace_info.dart';
import 'database_type_datamigration_v1.dart';
import 'dump_flags.dart';
import 'migration_job_state.dart';
import 'migration_job_type.dart';
import 'performance_config.dart';
import 'reverse_ssh_connectivity.dart';
import 'vpc_peering_connectivity.dart';

/// The set of arguments for MigrationJob.
class MigrationJobArgs {
  /// The CMEK (customer-managed encryption key) fully qualified key name used for the migration job. This field supports all migration jobs types except for: * Mysql to Mysql (use the cmek field in the cloudsql connection profile instead). * PostrgeSQL to PostgreSQL (use the cmek field in the cloudsql connection profile instead). * PostgreSQL to AlloyDB (use the kms_key_name field in the alloydb connection profile instead). Each Cloud CMEK key has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  final pulumi.Input<String>? cmekKeyName;

  /// The conversion workspace used by the migration.
  final pulumi.Input<ConversionWorkspaceInfo>? conversionWorkspace;

  /// The resource name (URI) of the destination connection profile.
  final pulumi.Input<String> destination;

  /// The database engine type and provider of the destination.
  final pulumi.Input<DatabaseTypeDatamigrationV1>? destinationDatabase;

  /// The migration job display name.
  final pulumi.Input<String>? displayName;

  /// The initial dump flags. This field and the "dump_path" field are mutually exclusive.
  final pulumi.Input<DumpFlags>? dumpFlags;

  /// The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]). This field and the "dump_flags" field are mutually exclusive.
  final pulumi.Input<String>? dumpPath;

  /// This field can be used to select the entities to migrate as part of the migration job. It uses AIP-160 notation to select a subset of the entities configured on the associated conversion-workspace. This field should not be set on migration-jobs that are not associated with a conversion workspace.
  final pulumi.Input<String>? filter;

  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Required. The ID of the instance to create.
  final pulumi.Input<String> migrationJobId;

  /// The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  final pulumi.Input<String>? name;

  /// Optional. Data dump parallelism settings used by the migration. Currently applicable only for MySQL to Cloud SQL for MySQL migrations only.
  final pulumi.Input<PerformanceConfig>? performanceConfig;
  final pulumi.Input<String>? project;

  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;

  /// The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  final pulumi.Input<ReverseSshConnectivity>? reverseSshConnectivity;

  /// The resource name (URI) of the source connection profile.
  final pulumi.Input<String> source;

  /// The database engine type and provider of the source.
  final pulumi.Input<DatabaseTypeDatamigrationV1>? sourceDatabase;

  /// The current migration job state.
  final pulumi.Input<MigrationJobState>? state;

  /// static ip connectivity data (default, no additional details needed).
  final pulumi.Input<Map<String, dynamic>>? staticIpConnectivity;

  /// The migration job type.
  final pulumi.Input<MigrationJobType> type;

  /// The details of the VPC network that the source database is located in.
  final pulumi.Input<VpcPeeringConnectivity>? vpcPeeringConnectivity;

  MigrationJobArgs({
    this.cmekKeyName,
    this.conversionWorkspace,
    required this.destination,
    this.destinationDatabase,
    this.displayName,
    this.dumpFlags,
    this.dumpPath,
    this.filter,
    this.labels,
    this.location,
    required this.migrationJobId,
    this.name,
    this.performanceConfig,
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
    final cmekKeyNameValue = cmekKeyName;
    if (cmekKeyNameValue != null) {
      map['cmekKeyName'] = cmekKeyNameValue;
    }
    final conversionWorkspaceValue = conversionWorkspace;
    if (conversionWorkspaceValue != null) {
      map['conversionWorkspace'] = pulumi.Input.mapOptionalInputValue<
              ConversionWorkspaceInfo, Map<String, dynamic>>(
          conversionWorkspaceValue, (value) => value.toMap());
    }
    map['destination'] = destination;
    final destinationDatabaseValue = destinationDatabase;
    if (destinationDatabaseValue != null) {
      map['destinationDatabase'] = pulumi.Input.mapOptionalInputValue<
              DatabaseTypeDatamigrationV1, Map<String, dynamic>>(
          destinationDatabaseValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final dumpFlagsValue = dumpFlags;
    if (dumpFlagsValue != null) {
      map['dumpFlags'] =
          pulumi.Input.mapOptionalInputValue<DumpFlags, Map<String, dynamic>>(
              dumpFlagsValue, (value) => value.toMap());
    }
    final dumpPathValue = dumpPath;
    if (dumpPathValue != null) {
      map['dumpPath'] = dumpPathValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
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
    final performanceConfigValue = performanceConfig;
    if (performanceConfigValue != null) {
      map['performanceConfig'] = pulumi.Input.mapOptionalInputValue<
              PerformanceConfig, Map<String, dynamic>>(
          performanceConfigValue, (value) => value.toMap());
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
              ReverseSshConnectivity, Map<String, dynamic>>(
          reverseSshConnectivityValue, (value) => value.toMap());
    }
    map['source'] = source;
    final sourceDatabaseValue = sourceDatabase;
    if (sourceDatabaseValue != null) {
      map['sourceDatabase'] = pulumi.Input.mapOptionalInputValue<
          DatabaseTypeDatamigrationV1,
          Map<String, dynamic>>(sourceDatabaseValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] =
          pulumi.Input.mapOptionalInputValue<MigrationJobState, String>(
              stateValue, (value) => value.value);
    }
    final staticIpConnectivityValue = staticIpConnectivity;
    if (staticIpConnectivityValue != null) {
      map['staticIpConnectivity'] = staticIpConnectivityValue;
    }
    map['type'] = pulumi.Input.mapInputValue<MigrationJobType, String>(
        type, (value) => value.value);
    final vpcPeeringConnectivityValue = vpcPeeringConnectivity;
    if (vpcPeeringConnectivityValue != null) {
      map['vpcPeeringConnectivity'] = pulumi.Input.mapOptionalInputValue<
              VpcPeeringConnectivity, Map<String, dynamic>>(
          vpcPeeringConnectivityValue, (value) => value.toMap());
    }
    return map;
  }

  factory MigrationJobArgs.fromMap(Map<String, dynamic> map) {
    return MigrationJobArgs(
      cmekKeyName: pulumi.Input.asOptionalInput<String>(map['cmekKeyName']),
      conversionWorkspace:
          pulumi.Input.asOptionalInput<ConversionWorkspaceInfo>(
              map['conversionWorkspace']),
      destination: pulumi.Input.asInput<String>(map['destination']),
      destinationDatabase:
          pulumi.Input.asOptionalInput<DatabaseTypeDatamigrationV1>(
              map['destinationDatabase']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      dumpFlags: pulumi.Input.asOptionalInput<DumpFlags>(map['dumpFlags']),
      dumpPath: pulumi.Input.asOptionalInput<String>(map['dumpPath']),
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      migrationJobId: pulumi.Input.asInput<String>(map['migrationJobId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      performanceConfig: pulumi.Input.asOptionalInput<PerformanceConfig>(
          map['performanceConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      reverseSshConnectivity:
          pulumi.Input.asOptionalInput<ReverseSshConnectivity>(
              map['reverseSshConnectivity']),
      source: pulumi.Input.asInput<String>(map['source']),
      sourceDatabase: pulumi.Input.asOptionalInput<DatabaseTypeDatamigrationV1>(
          map['sourceDatabase']),
      state: pulumi.Input.asOptionalInput<MigrationJobState>(map['state']),
      staticIpConnectivity: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['staticIpConnectivity']),
      type: pulumi.Input.asInput<MigrationJobType>(map['type']),
      vpcPeeringConnectivity:
          pulumi.Input.asOptionalInput<VpcPeeringConnectivity>(
              map['vpcPeeringConnectivity']),
    );
  }
}
