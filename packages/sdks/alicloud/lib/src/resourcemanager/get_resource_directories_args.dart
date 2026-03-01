// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_resource_directories_get_resource_directories_args_doc}
/// Arguments for getResourceDirectories.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_resource_directories_get_resource_directories_args_doc}
class GetResourceDirectoriesArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetResourceDirectoriesArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetResourceDirectoriesArgs({
    pulumi.Output<String>? outputFile,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
    };
  }

  factory GetResourceDirectoriesArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceDirectoriesArgs(
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

