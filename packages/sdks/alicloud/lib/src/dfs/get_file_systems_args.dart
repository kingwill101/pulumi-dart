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
  GetFileSystemsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetFileSystemsArgs.fromMap(Map<String, dynamic> map) {
    return GetFileSystemsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

