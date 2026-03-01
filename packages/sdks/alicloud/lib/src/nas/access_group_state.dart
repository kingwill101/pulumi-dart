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
    pulumi.Output<String>? accessGroupName,
    pulumi.Output<String>? accessGroupType,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? fileSystemType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? type,
  }) :
      accessGroupName = pulumi.Input.asOptionalInput<String>(accessGroupName),
      accessGroupType = pulumi.Input.asOptionalInput<String>(accessGroupType),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      fileSystemType = pulumi.Input.asOptionalInput<String>(fileSystemType),
      name = pulumi.Input.asOptionalInput<String>(name),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      accessGroupName: map['accessGroupName'] == null ? null : pulumi.Output.create<String>(map['accessGroupName'] as String),
      accessGroupType: map['accessGroupType'] == null ? null : pulumi.Output.create<String>(map['accessGroupType'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fileSystemType: map['fileSystemType'] == null ? null : pulumi.Output.create<String>(map['fileSystemType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

