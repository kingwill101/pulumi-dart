// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_filestore_backup_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_filestore_backup_backup_args_doc}
class BackupArgs {
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String>? description;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  final pulumi.Input<String> location;

  /// The resource name of the backup. The name must be unique within the specified instance.
  /// The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Name of the file share in the source Cloud Filestore instance that the backup is created from.
  final pulumi.Input<String> sourceFileShare;

  /// The resource name of the source Cloud Filestore instance, in the format projects/{projectId}/locations/{locationId}/instances/{instanceId}, used to create this backup.
  final pulumi.Input<String> sourceInstance;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  /// The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BackupArgs].
  /// [description] A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [location] The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  /// [name] The resource name of the backup. The name must be unique within the specified instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceFileShare] Name of the file share in the source Cloud Filestore instance that the backup is created from.
  /// [sourceInstance] The resource name of the source Cloud Filestore instance, in the format projects/{projectId}/locations/{locationId}/instances/{instanceId}, used to create this backup.
  /// [tags] A map of resource manager tags.
  BackupArgs({
    String? description,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
    required String sourceFileShare,
    required String sourceInstance,
    Map<String, String>? tags,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       sourceFileShare = pulumi.Input.asInput<String>(sourceFileShare),
       sourceInstance = pulumi.Input.asInput<String>(sourceInstance),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'sourceFileShare': sourceFileShare,
      'sourceInstance': sourceInstance,
      'tags': ?tags,
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceFileShare: map['sourceFileShare'] as String,
      sourceInstance: map['sourceInstance'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
