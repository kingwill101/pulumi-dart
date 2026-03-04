// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dfs_get_file_systems_get_file_systems_args_doc}
/// Arguments for getFileSystems.
/// {@endtemplate}
/// {@macro pulumi_dfs_get_file_systems_get_file_systems_args_doc}
class GetFileSystemsArgs {
  /// A list of File System IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by File System name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetFileSystemsArgs].
  /// [ids] A list of File System IDs.
  /// [nameRegex] A regex string to filter results by File System name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetFileSystemsArgs({this.ids, this.nameRegex, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetFileSystemsArgs.fromMap(Map<String, dynamic> map) {
    return GetFileSystemsArgs(
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
