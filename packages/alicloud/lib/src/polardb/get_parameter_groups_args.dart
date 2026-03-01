// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_get_parameter_groups_get_parameter_groups_args_doc}
/// Arguments for getParameterGroups.
/// {@endtemplate}
/// {@macro pulumi_polardb_get_parameter_groups_get_parameter_groups_args_doc}
class GetParameterGroupsArgs {
  /// The type of the database engine. Only `MySQL` is supported.
  final pulumi.Input<String>? dbType;
  /// The version number of the database engine. Valid values: `5.6`, `5.7`, `8.0`.
  final pulumi.Input<String>? dbVersion;
  /// A list of Parameter Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Parameter Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetParameterGroupsArgs].
  /// [dbType] The type of the database engine. Only `MySQL` is supported.
  /// [dbVersion] The version number of the database engine. Valid values: `5.6`, `5.7`, `8.0`.
  /// [ids] A list of Parameter Group IDs.
  /// [nameRegex] A regex string to filter results by Parameter Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetParameterGroupsArgs({
    String? dbType,
    String? dbVersion,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      dbType = pulumi.Input.asOptionalInput<String>(dbType),
      dbVersion = pulumi.Input.asOptionalInput<String>(dbVersion),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbType': ?dbType,
      'dbVersion': ?dbVersion,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetParameterGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetParameterGroupsArgs(
      dbType: map['dbType'] == null ? null : map['dbType'] as String,
      dbVersion: map['dbVersion'] == null ? null : map['dbVersion'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

