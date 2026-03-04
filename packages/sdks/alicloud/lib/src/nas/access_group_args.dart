// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_access_group_access_group_args_doc}
/// The set of arguments for AccessGroup.
/// {@endtemplate}
/// {@macro pulumi_nas_access_group_access_group_args_doc}
class AccessGroupArgs {
  /// The name of the permission group.
  final pulumi.Input<String>? accessGroupName;

  /// Permission group types, including Vpc.
  final pulumi.Input<String>? accessGroupType;

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

  /// Field 'type' has been deprecated from provider version 1.218.0. New field 'access_group_type' instead.
  final pulumi.Input<String>? type;

  /// Creates a new [AccessGroupArgs].
  /// [accessGroupName] The name of the permission group.
  /// [accessGroupType] Permission group types, including Vpc.
  /// [description] Permission group description information.
  /// [fileSystemType] File system type.
  /// [name] Field 'name' has been deprecated from provider version 1.218.0. New field 'access_group_name' instead.
  /// [type] Field 'type' has been deprecated from provider version 1.218.0. New field 'access_group_type' instead.
  AccessGroupArgs({
    this.accessGroupName,
    this.accessGroupType,
    this.description,
    this.fileSystemType,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'accessGroupType': ?accessGroupType,
      'description': ?description,
      'fileSystemType': ?fileSystemType,
      'name': ?name,
      'type': ?type,
    };
  }

  factory AccessGroupArgs.fromMap(Map<String, dynamic> map) {
    return AccessGroupArgs(
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
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
