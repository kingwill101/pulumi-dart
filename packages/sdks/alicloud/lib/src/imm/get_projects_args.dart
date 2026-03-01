// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_imm_get_projects_get_projects_args_doc}
/// Arguments for getProjects.
/// {@endtemplate}
/// {@macro pulumi_imm_get_projects_get_projects_args_doc}
class GetProjectsArgs {
  /// A list of Project IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetProjectsArgs].
  /// [ids] A list of Project IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetProjectsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetProjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

