// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_get_access_groups_get_access_groups_args_doc}
/// Arguments for getAccessGroups.
/// {@endtemplate}
/// {@macro pulumi_nas_get_access_groups_get_access_groups_args_doc}
class GetAccessGroupsArgs {
  /// The name of access group.
  final pulumi.Input<String>? accessGroupName;

  /// Filter results by a specific AccessGroupType.
  final pulumi.Input<String>? accessGroupType;

  /// Filter results by a specific Description.
  final pulumi.Input<String>? description;

  /// The type of file system. Valid values: `standard` and `extreme`. Default to `standard`.
  final pulumi.Input<String>? fileSystemType;

  /// A regex string to filter AccessGroups by name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Field `type` has been deprecated from version 1.95.0. Use `access_group_type` instead.
  final pulumi.Input<String>? type;

  /// Specifies whether the time to return is in UTC. Valid values: true and false.
  final pulumi.Input<bool>? useutcDateTime;

  /// Creates a new [GetAccessGroupsArgs].
  /// [accessGroupName] The name of access group.
  /// [accessGroupType] Filter results by a specific AccessGroupType.
  /// [description] Filter results by a specific Description.
  /// [fileSystemType] The type of file system. Valid values: `standard` and `extreme`. Default to `standard`.
  /// [nameRegex] A regex string to filter AccessGroups by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [type] Field `type` has been deprecated from version 1.95.0. Use `access_group_type` instead.
  /// [useutcDateTime] Specifies whether the time to return is in UTC. Valid values: true and false.
  GetAccessGroupsArgs({
    this.accessGroupName,
    this.accessGroupType,
    this.description,
    this.fileSystemType,
    this.nameRegex,
    this.outputFile,
    this.type,
    this.useutcDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'accessGroupType': ?accessGroupType,
      'description': ?description,
      'fileSystemType': ?fileSystemType,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'type': ?type,
      'useutcDateTime': ?useutcDateTime,
    };
  }

  factory GetAccessGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessGroupsArgs(
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
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      useutcDateTime: (() {
        final guardedValue = map['useutcDateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
