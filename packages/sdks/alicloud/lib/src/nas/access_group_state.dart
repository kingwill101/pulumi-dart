// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessGroup resources.
class AccessGroupState {
  /// The name of the permission group.
  final pulumi.Input<String>? accessGroupName;
  /// Permission group types, including Vpc.
  final pulumi.Input<String>? accessGroupType;
  /// (Available since v1.218.0) Creation time.
  final pulumi.Input<String>? createTime;
  /// Permission group description information.
  final pulumi.Input<String>? description;
  /// File system type.
  ///
  /// Value:
  /// - standard (default): Universal NAS
  /// - extreme: extreme NAS
  ///
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? fileSystemType;
  /// Field 'name' has been deprecated from provider version 1.218.0. New field 'access_group_name' instead.
  final pulumi.Input<String>? name;
  /// (Available since v1.256.0) The region ID.
  final pulumi.Input<String>? regionId;
  /// Field 'type' has been deprecated from provider version 1.218.0. New field 'access_group_type' instead.
  final pulumi.Input<String>? type;

  /// Creates a new [AccessGroupState].
  /// [accessGroupName] The name of the permission group.
  /// [accessGroupType] Permission group types, including Vpc.
  /// [createTime] (Available since v1.218.0) Creation time.
  /// [description] Permission group description information.
  /// [fileSystemType] File system type.
  /// [name] Field 'name' has been deprecated from provider version 1.218.0. New field 'access_group_name' instead.
  /// [regionId] (Available since v1.256.0) The region ID.
  /// [type] Field 'type' has been deprecated from provider version 1.218.0. New field 'access_group_type' instead.
  AccessGroupState({
    this.accessGroupName,
    this.accessGroupType,
    this.createTime,
    this.description,
    this.fileSystemType,
    this.name,
    this.regionId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'accessGroupType': ?accessGroupType,
      'createTime': ?createTime,
      'description': ?description,
      'fileSystemType': ?fileSystemType,
      'name': ?name,
      'regionId': ?regionId,
      'type': ?type,
    };
  }

  factory AccessGroupState.fromMap(Map<String, dynamic> map) {
    return AccessGroupState(
      accessGroupName: map['accessGroupName'] == null ? null : (map['accessGroupName'] as String).input(),
      accessGroupType: map['accessGroupType'] == null ? null : (map['accessGroupType'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fileSystemType: map['fileSystemType'] == null ? null : (map['fileSystemType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

