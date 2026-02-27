import 'package:pulumi/pulumi.dart' as pulumi;
import '../migration_job_dump_flags/migration_job_dump_flags.dart';
import '../migration_job_error/migration_job_error.dart';
import '../migration_job_performance_config/migration_job_performance_config.dart';
import '../migration_job_reverse_ssh_connectivity/migration_job_reverse_ssh_connectivity.dart';
import '../migration_job_vpc_peering_connectivity/migration_job_vpc_peering_connectivity.dart';
import 'migration_job_args.dart';

/// A migration job definition.
///
///
/// To get more information about MigrationJob, see:
///
/// * [API documentation](https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.migrationJobs/create)
/// * How-to Guides
/// * [Database Migration](https://cloud.google.com/database-migration/docs/)
///
/// ## Example Usage
///
/// ### Database Migration Service Migration Job Mysql To Mysql
///
///
///
/// ### Database Migration Service Migration Job Postgres To Postgres
///
///
///
/// ### Database Migration Service Migration Job Postgres To Alloydb
///
///
///
///
/// ## Import
///
/// MigrationJob can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/migrationJobs/{{migration_job_id}}`
///
/// * `{{project}}/{{location}}/{{migration_job_id}}`
///
/// * `{{location}}/{{migration_job_id}}`
///
/// When using the `pulumi import` command, MigrationJob can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/migrationJob:MigrationJob default projects/{{project}}/locations/{{location}}/migrationJobs/{{migration_job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/migrationJob:MigrationJob default {{project}}/{{location}}/{{migration_job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/migrationJob:MigrationJob default {{location}}/{{migration_job_id}}
/// ```
class MigrationJob extends pulumi.CustomResource {
  /// Output only. The timestamp when the resource was created. A timestamp in RFC3339 UTC 'Zulu' format, accurate to nanoseconds. Example: '2014-10-02T15:01:23.045123456Z'.
  late final pulumi.Output<String> createTime;

  /// The name of the destination connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{destinationConnectionProfile}.
  late final pulumi.Output<String> destination;

  /// The migration job display name.
  late final pulumi.Output<String?> displayName;

  /// The initial dump flags.
  /// Structure is documented below.
  late final pulumi.Output<MigrationJobDumpFlags?> dumpFlags;

  /// The path to the dump file in Google Cloud Storage,
  /// in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  /// This field and the "dump_flags" field are mutually exclusive.
  late final pulumi.Output<String?> dumpPath;

  /// The type of the data dump. Supported for MySQL to CloudSQL for MySQL
  /// migrations only.
  /// Possible values are: `LOGICAL`, `PHYSICAL`.
  late final pulumi.Output<String?> dumpType;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Output only. The error details in case of state FAILED.
  /// Structure is documented below.
  late final pulumi.Output<List<MigrationJobError>> errors;

  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where the migration job should reside.
  late final pulumi.Output<String?> location;

  /// The ID of the migration job.
  late final pulumi.Output<String> migrationJobId;

  /// The name of this migration job resource in the form of projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  late final pulumi.Output<String> name;

  /// Data dump parallelism settings used by the migration.
  /// Structure is documented below.
  late final pulumi.Output<MigrationJobPerformanceConfig?> performanceConfig;

  /// The current migration job phase.
  late final pulumi.Output<String> phase;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  late final pulumi.Output<MigrationJobReverseSshConnectivity?>
      reverseSshConnectivity;

  /// The name of the source connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{sourceConnectionProfile}.
  late final pulumi.Output<String> source;

  /// The current migration job state.
  late final pulumi.Output<String> state;

  /// If set to an empty object (`{}`), the source database will allow incoming
  /// connections from the public IP of the destination database.
  /// You can retrieve the public IP of the Cloud SQL instance from the
  /// Cloud SQL console or using Cloud SQL APIs.
  late final pulumi.Output<Map<String, dynamic>?> staticIpConnectivity;

  /// The type of the migration job.
  /// Possible values are: `ONE_TIME`, `CONTINUOUS`.
  late final pulumi.Output<String> type;

  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  late final pulumi.Output<MigrationJobVpcPeeringConnectivity?>
      vpcPeeringConnectivity;

  MigrationJob(
    String name, {
    MigrationJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:databasemigrationservice/migrationJob:MigrationJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.destination = registerOutput<String>('destination');
    this.displayName = registerOutput<String?>('displayName');
    this.dumpFlags = registerOutput<MigrationJobDumpFlags?>('dumpFlags');
    this.dumpPath = registerOutput<String?>('dumpPath');
    this.dumpType = registerOutput<String?>('dumpType');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.errors = registerOutput<List<MigrationJobError>>('errors');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.migrationJobId = registerOutput<String>('migrationJobId');
    this.name = registerOutput<String>('name');
    this.performanceConfig =
        registerOutput<MigrationJobPerformanceConfig?>('performanceConfig');
    this.phase = registerOutput<String>('phase');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reverseSshConnectivity =
        registerOutput<MigrationJobReverseSshConnectivity?>(
            'reverseSshConnectivity');
    this.source = registerOutput<String>('source');
    this.state = registerOutput<String>('state');
    this.staticIpConnectivity =
        registerOutput<Map<String, dynamic>?>('staticIpConnectivity');
    this.type = registerOutput<String>('type');
    this.vpcPeeringConnectivity =
        registerOutput<MigrationJobVpcPeeringConnectivity?>(
            'vpcPeeringConnectivity');
  }
}
