// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../migration_job_dump_flags/migration_job_dump_flags.dart';
import '../migration_job_performance_config/migration_job_performance_config.dart';
import '../migration_job_reverse_ssh_connectivity/migration_job_reverse_ssh_connectivity.dart';
import '../migration_job_vpc_peering_connectivity/migration_job_vpc_peering_connectivity.dart';

/// The set of arguments for MigrationJob.
class MigrationJobArgs {
  /// The name of the destination connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{destinationConnectionProfile}.
  final pulumi.Input<String> destination;

  /// The migration job display name.
  final pulumi.Input<String>? displayName;

  /// The initial dump flags.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobDumpFlags>? dumpFlags;

  /// The path to the dump file in Google Cloud Storage,
  /// in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  /// This field and the "dump_flags" field are mutually exclusive.
  final pulumi.Input<String>? dumpPath;

  /// The type of the data dump. Supported for MySQL to CloudSQL for MySQL
  /// migrations only.
  /// Possible values are: `LOGICAL`, `PHYSICAL`.
  final pulumi.Input<String>? dumpType;

  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the migration job should reside.
  final pulumi.Input<String>? location;

  /// The ID of the migration job.
  final pulumi.Input<String> migrationJobId;

  /// Data dump parallelism settings used by the migration.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobPerformanceConfig>? performanceConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobReverseSshConnectivity>?
      reverseSshConnectivity;

  /// The name of the source connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{sourceConnectionProfile}.
  final pulumi.Input<String> source;

  /// If set to an empty object (`{}`), the source database will allow incoming
  /// connections from the public IP of the destination database.
  /// You can retrieve the public IP of the Cloud SQL instance from the
  /// Cloud SQL console or using Cloud SQL APIs.
  final pulumi.Input<Map<String, dynamic>>? staticIpConnectivity;

  /// The type of the migration job.
  /// Possible values are: `ONE_TIME`, `CONTINUOUS`.
  final pulumi.Input<String> type;

  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobVpcPeeringConnectivity>?
      vpcPeeringConnectivity;

  MigrationJobArgs({
    required this.destination,
    this.displayName,
    this.dumpFlags,
    this.dumpPath,
    this.dumpType,
    this.labels,
    this.location,
    required this.migrationJobId,
    this.performanceConfig,
    this.project,
    this.reverseSshConnectivity,
    required this.source,
    this.staticIpConnectivity,
    required this.type,
    this.vpcPeeringConnectivity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = destination;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final dumpFlagsValue = dumpFlags;
    if (dumpFlagsValue != null) {
      map['dumpFlags'] = pulumi.Input.mapOptionalInputValue<
          MigrationJobDumpFlags,
          Map<String, dynamic>>(dumpFlagsValue, (value) => value.toMap());
    }
    final dumpPathValue = dumpPath;
    if (dumpPathValue != null) {
      map['dumpPath'] = dumpPathValue;
    }
    final dumpTypeValue = dumpType;
    if (dumpTypeValue != null) {
      map['dumpType'] = dumpTypeValue;
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
    final performanceConfigValue = performanceConfig;
    if (performanceConfigValue != null) {
      map['performanceConfig'] = pulumi.Input.mapOptionalInputValue<
              MigrationJobPerformanceConfig, Map<String, dynamic>>(
          performanceConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reverseSshConnectivityValue = reverseSshConnectivity;
    if (reverseSshConnectivityValue != null) {
      map['reverseSshConnectivity'] = pulumi.Input.mapOptionalInputValue<
              MigrationJobReverseSshConnectivity, Map<String, dynamic>>(
          reverseSshConnectivityValue, (value) => value.toMap());
    }
    map['source'] = source;
    final staticIpConnectivityValue = staticIpConnectivity;
    if (staticIpConnectivityValue != null) {
      map['staticIpConnectivity'] = staticIpConnectivityValue;
    }
    map['type'] = type;
    final vpcPeeringConnectivityValue = vpcPeeringConnectivity;
    if (vpcPeeringConnectivityValue != null) {
      map['vpcPeeringConnectivity'] = pulumi.Input.mapOptionalInputValue<
              MigrationJobVpcPeeringConnectivity, Map<String, dynamic>>(
          vpcPeeringConnectivityValue, (value) => value.toMap());
    }
    return map;
  }

  factory MigrationJobArgs.fromMap(Map<String, dynamic> map) {
    return MigrationJobArgs(
      destination: pulumi.Input.asInput<String>(map['destination']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      dumpFlags:
          pulumi.Input.asOptionalInput<MigrationJobDumpFlags>(map['dumpFlags']),
      dumpPath: pulumi.Input.asOptionalInput<String>(map['dumpPath']),
      dumpType: pulumi.Input.asOptionalInput<String>(map['dumpType']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      migrationJobId: pulumi.Input.asInput<String>(map['migrationJobId']),
      performanceConfig:
          pulumi.Input.asOptionalInput<MigrationJobPerformanceConfig>(
              map['performanceConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reverseSshConnectivity:
          pulumi.Input.asOptionalInput<MigrationJobReverseSshConnectivity>(
              map['reverseSshConnectivity']),
      source: pulumi.Input.asInput<String>(map['source']),
      staticIpConnectivity: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['staticIpConnectivity']),
      type: pulumi.Input.asInput<String>(map['type']),
      vpcPeeringConnectivity:
          pulumi.Input.asOptionalInput<MigrationJobVpcPeeringConnectivity>(
              map['vpcPeeringConnectivity']),
    );
  }
}
