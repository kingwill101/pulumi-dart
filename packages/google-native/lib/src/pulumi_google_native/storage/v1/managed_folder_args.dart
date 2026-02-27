// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for ManagedFolder.
class ManagedFolderArgs {
  /// The name of the bucket containing this managed folder.
  final Input<String> bucket;

  /// The creation time of the managed folder in RFC 3339 format.
  final Input<String>? createTime;

  /// The ID of the managed folder, including the bucket name and managed folder name.
  final Input<String>? id;

  /// The kind of item this is. For managed folders, this is always storage#managedFolder.
  final Input<String>? kind;

  /// The version of the metadata for this managed folder. Used for preconditions and for detecting changes in metadata.
  final Input<String>? metageneration;

  /// The name of the managed folder. Required if not specified by URL parameter.
  final Input<String>? name;

  /// The link to this managed folder.
  final Input<String>? selfLink;

  /// The last update time of the managed folder metadata in RFC 3339 format.
  final Input<String>? updateTime;

  ManagedFolderArgs({
    required this.bucket,
    this.createTime,
    this.id,
    this.kind,
    this.metageneration,
    this.name,
    this.selfLink,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final metagenerationValue = metageneration;
    if (metagenerationValue != null) {
      map['metageneration'] = metagenerationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory ManagedFolderArgs.fromMap(Map<String, dynamic> map) {
    return ManagedFolderArgs(
      bucket: Input.asInput<String>(map['bucket']),
      createTime: Input.asOptionalInput<String>(map['createTime']),
      id: Input.asOptionalInput<String>(map['id']),
      kind: Input.asOptionalInput<String>(map['kind']),
      metageneration: Input.asOptionalInput<String>(map['metageneration']),
      name: Input.asOptionalInput<String>(map['name']),
      selfLink: Input.asOptionalInput<String>(map['selfLink']),
      updateTime: Input.asOptionalInput<String>(map['updateTime']),
    );
  }
}
