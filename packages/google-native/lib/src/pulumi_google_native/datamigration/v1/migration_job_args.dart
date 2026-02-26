// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'conversion_workspace_info.dart';
import 'database_type2.dart';
import 'dump_flags.dart';
import 'migration_job_state.dart';
import 'migration_job_type.dart';
import 'performance_config.dart';
import 'reverse_ssh_connectivity.dart';
import 'vpc_peering_connectivity.dart';

/// The set of arguments for MigrationJob.
class MigrationJobArgs {
  /// The CMEK (customer-managed encryption key) fully qualified key name used for the migration job. This field supports all migration jobs types except for: * Mysql to Mysql (use the cmek field in the cloudsql connection profile instead). * PostrgeSQL to PostgreSQL (use the cmek field in the cloudsql connection profile instead). * PostgreSQL to AlloyDB (use the kms_key_name field in the alloydb connection profile instead). Each Cloud CMEK key has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  final Input<String>? cmekKeyName;

  /// The conversion workspace used by the migration.
  final Input<ConversionWorkspaceInfo>? conversionWorkspace;

  /// The resource name (URI) of the destination connection profile.
  final Input<String> destination;

  /// The database engine type and provider of the destination.
  final Input<DatabaseType2>? destinationDatabase;

  /// The migration job display name.
  final Input<String>? displayName;

  /// The initial dump flags. This field and the "dump_path" field are mutually exclusive.
  final Input<DumpFlags>? dumpFlags;

  /// The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]). This field and the "dump_flags" field are mutually exclusive.
  final Input<String>? dumpPath;

  /// This field can be used to select the entities to migrate as part of the migration job. It uses AIP-160 notation to select a subset of the entities configured on the associated conversion-workspace. This field should not be set on migration-jobs that are not associated with a conversion workspace.
  final Input<String>? filter;

  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Required. The ID of the instance to create.
  final Input<String> migrationJobId;

  /// The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  final Input<String>? name;

  /// Optional. Data dump parallelism settings used by the migration. Currently applicable only for MySQL to Cloud SQL for MySQL migrations only.
  final Input<PerformanceConfig>? performanceConfig;
  final Input<String>? project;

  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final Input<String>? requestId;

  /// The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  final Input<ReverseSshConnectivity>? reverseSshConnectivity;

  /// The resource name (URI) of the source connection profile.
  final Input<String> source;

  /// The database engine type and provider of the source.
  final Input<DatabaseType2>? sourceDatabase;

  /// The current migration job state.
  final Input<MigrationJobState>? state;

  /// static ip connectivity data (default, no additional details needed).
  final Input<Map<String, dynamic>>? staticIpConnectivity;

  /// The migration job type.
  final Input<MigrationJobType> type;

  /// The details of the VPC network that the source database is located in.
  final Input<VpcPeeringConnectivity>? vpcPeeringConnectivity;

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
      map['conversionWorkspace'] = Input.mapOptionalInputValue<
              ConversionWorkspaceInfo, Map<String, dynamic>>(
          conversionWorkspaceValue, (value) => value.toMap());
    }
    map['destination'] = destination;
    final destinationDatabaseValue = destinationDatabase;
    if (destinationDatabaseValue != null) {
      map['destinationDatabase'] =
          Input.mapOptionalInputValue<DatabaseType2, Map<String, dynamic>>(
              destinationDatabaseValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final dumpFlagsValue = dumpFlags;
    if (dumpFlagsValue != null) {
      map['dumpFlags'] =
          Input.mapOptionalInputValue<DumpFlags, Map<String, dynamic>>(
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
      map['performanceConfig'] =
          Input.mapOptionalInputValue<PerformanceConfig, Map<String, dynamic>>(
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
      map['reverseSshConnectivity'] = Input.mapOptionalInputValue<
              ReverseSshConnectivity, Map<String, dynamic>>(
          reverseSshConnectivityValue, (value) => value.toMap());
    }
    map['source'] = source;
    final sourceDatabaseValue = sourceDatabase;
    if (sourceDatabaseValue != null) {
      map['sourceDatabase'] =
          Input.mapOptionalInputValue<DatabaseType2, Map<String, dynamic>>(
              sourceDatabaseValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = Input.mapOptionalInputValue<MigrationJobState, String>(
          stateValue, (value) => value.value);
    }
    final staticIpConnectivityValue = staticIpConnectivity;
    if (staticIpConnectivityValue != null) {
      map['staticIpConnectivity'] = staticIpConnectivityValue;
    }
    map['type'] = Input.mapInputValue<MigrationJobType, String>(
        type, (value) => value.value);
    final vpcPeeringConnectivityValue = vpcPeeringConnectivity;
    if (vpcPeeringConnectivityValue != null) {
      map['vpcPeeringConnectivity'] = Input.mapOptionalInputValue<
              VpcPeeringConnectivity, Map<String, dynamic>>(
          vpcPeeringConnectivityValue, (value) => value.toMap());
    }
    return map;
  }

  factory MigrationJobArgs.fromMap(Map<String, dynamic> map) {
    return MigrationJobArgs(
      cmekKeyName: Input.asOptionalInput<String>(map['cmekKeyName']),
      conversionWorkspace: Input.asOptionalInput<ConversionWorkspaceInfo>(
          map['conversionWorkspace']),
      destination: Input.asInput<String>(map['destination']),
      destinationDatabase:
          Input.asOptionalInput<DatabaseType2>(map['destinationDatabase']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      dumpFlags: Input.asOptionalInput<DumpFlags>(map['dumpFlags']),
      dumpPath: Input.asOptionalInput<String>(map['dumpPath']),
      filter: Input.asOptionalInput<String>(map['filter']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      migrationJobId: Input.asInput<String>(map['migrationJobId']),
      name: Input.asOptionalInput<String>(map['name']),
      performanceConfig:
          Input.asOptionalInput<PerformanceConfig>(map['performanceConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      reverseSshConnectivity: Input.asOptionalInput<ReverseSshConnectivity>(
          map['reverseSshConnectivity']),
      source: Input.asInput<String>(map['source']),
      sourceDatabase:
          Input.asOptionalInput<DatabaseType2>(map['sourceDatabase']),
      state: Input.asOptionalInput<MigrationJobState>(map['state']),
      staticIpConnectivity: Input.asOptionalInput<Map<String, dynamic>>(
          map['staticIpConnectivity']),
      type: Input.asInput<MigrationJobType>(map['type']),
      vpcPeeringConnectivity: Input.asOptionalInput<VpcPeeringConnectivity>(
          map['vpcPeeringConnectivity']),
    );
  }
}
