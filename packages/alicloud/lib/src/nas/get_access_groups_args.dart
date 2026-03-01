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
    String? accessGroupName,
    String? accessGroupType,
    String? description,
    String? fileSystemType,
    String? nameRegex,
    String? outputFile,
    String? type,
    bool? useutcDateTime,
  }) :
      accessGroupName = pulumi.Input.asOptionalInput<String>(accessGroupName),
      accessGroupType = pulumi.Input.asOptionalInput<String>(accessGroupType),
      description = pulumi.Input.asOptionalInput<String>(description),
      fileSystemType = pulumi.Input.asOptionalInput<String>(fileSystemType),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      type = pulumi.Input.asOptionalInput<String>(type),
      useutcDateTime = pulumi.Input.asOptionalInput<bool>(useutcDateTime);

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
      accessGroupName: map['accessGroupName'] == null ? null : map['accessGroupName'] as String,
      accessGroupType: map['accessGroupType'] == null ? null : map['accessGroupType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      fileSystemType: map['fileSystemType'] == null ? null : map['fileSystemType'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      useutcDateTime: map['useutcDateTime'] == null ? null : map['useutcDateTime'] as bool,
    );
  }
}

