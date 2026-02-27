import 'package:pulumi/pulumi.dart' hide Config;
import 'backup_args11.dart';
import 'service_response.dart';

/// Creates a new backup in a given project and location.
class Backup11 extends CustomResource {
  /// Required. The ID of the backup, which is used as the final component of the backup's name.This value must be between 1 and 64 characters long, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  late final Output<String> backupId;

  /// The time when the backup was started.
  late final Output<String> createTime;

  /// The description of the backup.
  late final Output<String> description;

  /// The time when the backup finished creating.
  late final Output<String> endTime;
  late final Output<String> location;

  /// Immutable. The relative resource name of the backup, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  late final Output<String?> requestId;

  /// Services that are restoring from the backup.
  late final Output<List<String>> restoringServices;
  late final Output<String> serviceId;

  /// The revision of the service at the time of backup.
  late final Output<ServiceResponse> serviceRevision;

  /// The current state of the backup.
  late final Output<String> state;

  Backup11(
    String name, {
    BackupArgs11? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:metastore/v1:Backup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupId = registerOutput<String>('backupId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.endTime = registerOutput<String>('endTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.restoringServices = registerOutput<List<String>>('restoringServices');
    this.serviceId = registerOutput<String>('serviceId');
    this.serviceRevision = registerOutput<ServiceResponse>('serviceRevision');
    this.state = registerOutput<String>('state');
  }
}
