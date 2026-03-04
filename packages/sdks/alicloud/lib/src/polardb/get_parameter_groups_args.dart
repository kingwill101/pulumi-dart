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
    this.dbType,
    this.dbVersion,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

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
      dbType: (() {
        final guardedValue = map['dbType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbVersion: (() {
        final guardedValue = map['dbVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
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
    );
  }
}
