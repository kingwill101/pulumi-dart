import 'package:pulumi/pulumi.dart';
import 'backup_args12.dart';
import 'service_response2.dart';

/// Creates a new backup in a given project and location.
class Backup12 extends CustomResource {
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
  late final Output<ServiceResponse2> serviceRevision;

  /// The current state of the backup.
  late final Output<String> state;

  Backup12(
    String name, {
    BackupArgs12? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:metastore/v1alpha:Backup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.endTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.restoringServices = Output.createUnknown<List<String>>();
    this.serviceId = Output.createUnknown<String>();
    this.serviceRevision = Output.createUnknown<ServiceResponse2>();
    this.state = Output.createUnknown<String>();
  }
}
