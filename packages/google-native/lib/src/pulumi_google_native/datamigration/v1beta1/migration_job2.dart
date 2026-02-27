import 'package:pulumi/pulumi.dart' hide Config;
import 'database_type_response2.dart';
import 'migration_job_args2.dart';
import 'reverse_ssh_connectivity_response2.dart';
import 'status_response16.dart';
import 'vpc_peering_connectivity_response2.dart';

/// Creates a new migration job in a given project and location.
class MigrationJob2 extends CustomResource {
  /// The timestamp when the migration job resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// The resource name (URI) of the destination connection profile.
  late final Output<String> destination;

  /// The database engine type and provider of the destination.
  late final Output<DatabaseTypeResponse2> destinationDatabase;

  /// The migration job display name.
  late final Output<String> displayName;

  /// The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  late final Output<String> dumpPath;

  /// The duration of the migration job (in seconds). A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  late final Output<String> duration;

  /// If the migration job is completed, the time when it was completed.
  late final Output<String> endTime;

  /// The error details in case of state FAILED.
  late final Output<StatusResponse16> error;

  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Required. The ID of the instance to create.
  late final Output<String> migrationJobId;

  /// The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  late final Output<String> name;

  /// The current migration job phase.
  late final Output<String> phase;
  late final Output<String> project;

  /// A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final Output<String?> requestId;

  /// The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  late final Output<ReverseSshConnectivityResponse2> reverseSshConnectivity;

  /// The resource name (URI) of the source connection profile.
  late final Output<String> source;

  /// The database engine type and provider of the source.
  late final Output<DatabaseTypeResponse2> sourceDatabase;

  /// The current migration job state.
  late final Output<String> state;

  /// static ip connectivity data (default, no additional details needed).
  late final Output<Map<String, dynamic>> staticIpConnectivity;

  /// The migration job type.
  late final Output<String> type;

  /// The timestamp when the migration job resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  /// The details of the VPC network that the source database is located in.
  late final Output<VpcPeeringConnectivityResponse2> vpcPeeringConnectivity;

  MigrationJob2(
    String name, {
    MigrationJobArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datamigration/v1beta1:MigrationJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.destination = registerOutput<String>('destination');
    this.destinationDatabase =
        registerOutput<DatabaseTypeResponse2>('destinationDatabase');
    this.displayName = registerOutput<String>('displayName');
    this.dumpPath = registerOutput<String>('dumpPath');
    this.duration = registerOutput<String>('duration');
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<StatusResponse16>('error');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.migrationJobId = registerOutput<String>('migrationJobId');
    this.name = registerOutput<String>('name');
    this.phase = registerOutput<String>('phase');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.reverseSshConnectivity =
        registerOutput<ReverseSshConnectivityResponse2>(
            'reverseSshConnectivity');
    this.source = registerOutput<String>('source');
    this.sourceDatabase =
        registerOutput<DatabaseTypeResponse2>('sourceDatabase');
    this.state = registerOutput<String>('state');
    this.staticIpConnectivity =
        registerOutput<Map<String, dynamic>>('staticIpConnectivity');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
    this.vpcPeeringConnectivity =
        registerOutput<VpcPeeringConnectivityResponse2>(
            'vpcPeeringConnectivity');
  }
}
