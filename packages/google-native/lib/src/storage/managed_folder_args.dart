// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_managed_folder_args_doc}
/// The set of arguments for ManagedFolder.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_managed_folder_args_doc}
class ManagedFolderArgs {
  /// The name of the bucket containing this managed folder.
  final pulumi.Input<String> bucket;
  /// The creation time of the managed folder in RFC 3339 format.
  final pulumi.Input<String>? createTime;
  /// The ID of the managed folder, including the bucket name and managed folder name.
  final pulumi.Input<String>? id;
  /// The kind of item this is. For managed folders, this is always storage#managedFolder.
  final pulumi.Input<String>? kind;
  /// The version of the metadata for this managed folder. Used for preconditions and for detecting changes in metadata.
  final pulumi.Input<String>? metageneration;
  /// The name of the managed folder. Required if not specified by URL parameter.
  final pulumi.Input<String>? name;
  /// The link to this managed folder.
  final pulumi.Input<String>? selfLink;
  /// The last update time of the managed folder metadata in RFC 3339 format.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ManagedFolderArgs].
  /// [bucket] The name of the bucket containing this managed folder.
  /// [createTime] The creation time of the managed folder in RFC 3339 format.
  /// [id] The ID of the managed folder, including the bucket name and managed folder name.
  /// [kind] The kind of item this is. For managed folders, this is always storage#managedFolder.
  /// [metageneration] The version of the metadata for this managed folder. Used for preconditions and for detecting changes in metadata.
  /// [name] The name of the managed folder. Required if not specified by URL parameter.
  /// [selfLink] The link to this managed folder.
  /// [updateTime] The last update time of the managed folder metadata in RFC 3339 format.
  ManagedFolderArgs({
    required String bucket,
    String? createTime,
    String? id,
    String? kind,
    String? metageneration,
    String? name,
    String? selfLink,
    String? updateTime,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      id = pulumi.Input.asOptionalInput<String>(id),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metageneration = pulumi.Input.asOptionalInput<String>(metageneration),
      name = pulumi.Input.asOptionalInput<String>(name),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'createTime': ?createTime,
      'id': ?id,
      'kind': ?kind,
      'metageneration': ?metageneration,
      'name': ?name,
      'selfLink': ?selfLink,
      'updateTime': ?updateTime,
    };
  }

  factory ManagedFolderArgs.fromMap(Map<String, dynamic> map) {
    return ManagedFolderArgs(
      bucket: map['bucket'] as String,
      createTime: map['createTime'] == null ? null : map['createTime'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metageneration: map['metageneration'] == null ? null : map['metageneration'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      updateTime: map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}

