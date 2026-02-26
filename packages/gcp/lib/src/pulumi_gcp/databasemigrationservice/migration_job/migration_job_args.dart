// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../migration_job_dump_flags/migration_job_dump_flags.dart';
import '../migration_job_performance_config/migration_job_performance_config.dart';
import '../migration_job_reverse_ssh_connectivity/migration_job_reverse_ssh_connectivity.dart';
import '../migration_job_vpc_peering_connectivity/migration_job_vpc_peering_connectivity.dart';

/// The set of arguments for MigrationJob.
class MigrationJobArgs {
  /// The name of the destination connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{destinationConnectionProfile}.
  final Input<String> destination;

  /// The migration job display name.
  final Input<String>? displayName;

  /// The initial dump flags.
  /// Structure is documented below.
  final Input<MigrationJobDumpFlags>? dumpFlags;

  /// The path to the dump file in Google Cloud Storage,
  /// in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  /// This field and the <span pulumi-lang-nodejs=""dumpFlags"" pulumi-lang-dotnet=""DumpFlags"" pulumi-lang-go=""dumpFlags"" pulumi-lang-python=""dump_flags"" pulumi-lang-yaml=""dumpFlags"" pulumi-lang-java=""dumpFlags"">"dump_flags"</span> field are mutually exclusive.
  final Input<String>? dumpPath;

  /// The type of the data dump. Supported for MySQL to CloudSQL for MySQL
  /// migrations only.
  /// Possible values are: `LOGICAL`, `PHYSICAL`.
  final Input<String>? dumpType;

  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location where the migration job should reside.
  final Input<String>? location;

  /// The ID of the migration job.
  final Input<String> migrationJobId;

  /// Data dump parallelism settings used by the migration.
  /// Structure is documented below.
  final Input<MigrationJobPerformanceConfig>? performanceConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  final Input<MigrationJobReverseSshConnectivity>? reverseSshConnectivity;

  /// The name of the source connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{sourceConnectionProfile}.
  final Input<String> source;

  /// If set to an empty object (`{}`), the source database will allow incoming
  /// connections from the public IP of the destination database.
  /// You can retrieve the public IP of the Cloud SQL instance from the
  /// Cloud SQL console or using Cloud SQL APIs.
  final Input<Map<String, dynamic>>? staticIpConnectivity;

  /// The type of the migration job.
  /// Possible values are: `ONE_TIME`, `CONTINUOUS`.
  final Input<String> type;

  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  final Input<MigrationJobVpcPeeringConnectivity>? vpcPeeringConnectivity;

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
      map['dumpFlags'] = Input.mapOptionalInputValue<MigrationJobDumpFlags,
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
      map['performanceConfig'] = Input.mapOptionalInputValue<
              MigrationJobPerformanceConfig, Map<String, dynamic>>(
          performanceConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reverseSshConnectivityValue = reverseSshConnectivity;
    if (reverseSshConnectivityValue != null) {
      map['reverseSshConnectivity'] = Input.mapOptionalInputValue<
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
      map['vpcPeeringConnectivity'] = Input.mapOptionalInputValue<
              MigrationJobVpcPeeringConnectivity, Map<String, dynamic>>(
          vpcPeeringConnectivityValue, (value) => value.toMap());
    }
    return map;
  }

  factory MigrationJobArgs.fromMap(Map<String, dynamic> map) {
    return MigrationJobArgs(
      destination: Input.asInput<String>(map['destination']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      dumpFlags: Input.asOptionalInput<MigrationJobDumpFlags>(map['dumpFlags']),
      dumpPath: Input.asOptionalInput<String>(map['dumpPath']),
      dumpType: Input.asOptionalInput<String>(map['dumpType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      migrationJobId: Input.asInput<String>(map['migrationJobId']),
      performanceConfig: Input.asOptionalInput<MigrationJobPerformanceConfig>(
          map['performanceConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      reverseSshConnectivity:
          Input.asOptionalInput<MigrationJobReverseSshConnectivity>(
              map['reverseSshConnectivity']),
      source: Input.asInput<String>(map['source']),
      staticIpConnectivity: Input.asOptionalInput<Map<String, dynamic>>(
          map['staticIpConnectivity']),
      type: Input.asInput<String>(map['type']),
      vpcPeeringConnectivity:
          Input.asOptionalInput<MigrationJobVpcPeeringConnectivity>(
              map['vpcPeeringConnectivity']),
    );
  }
}
