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
      accessGroupName: (() {
        final guardedValue = map['accessGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accessGroupType: (() {
        final guardedValue = map['accessGroupType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileSystemType: (() {
        final guardedValue = map['fileSystemType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
