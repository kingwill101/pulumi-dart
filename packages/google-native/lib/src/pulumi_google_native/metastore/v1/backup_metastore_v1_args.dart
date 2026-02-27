// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Backup.
class BackupMetastoreV1Args {
  /// Required. The ID of the backup, which is used as the final component of the backup's name.This value must be between 1 and 64 characters long, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  final pulumi.Input<String> backupId;

  /// The description of the backup.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;

  /// Immutable. The relative resource name of the backup, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String> serviceId;

  BackupMetastoreV1Args({
    required this.backupId,
    this.description,
    this.location,
    this.name,
    this.project,
    this.requestId,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
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
    map['serviceId'] = serviceId;
    return map;
  }

  factory BackupMetastoreV1Args.fromMap(Map<String, dynamic> map) {
    return BackupMetastoreV1Args(
      backupId: pulumi.Input.asInput<String>(map['backupId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
    );
  }
}
