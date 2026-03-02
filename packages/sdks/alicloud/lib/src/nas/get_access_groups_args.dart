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
      accessGroupName: map['accessGroupName'] == null ? null : (map['accessGroupName']! as String).input(),
      accessGroupType: map['accessGroupType'] == null ? null : (map['accessGroupType']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      fileSystemType: map['fileSystemType'] == null ? null : (map['fileSystemType']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      useutcDateTime: map['useutcDateTime'] == null ? null : (map['useutcDateTime']! as bool).input(),
    );
  }
}

