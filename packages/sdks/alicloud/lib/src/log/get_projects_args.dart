// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_get_projects_get_projects_args_doc}
/// Arguments for getProjects.
/// {@endtemplate}
/// {@macro pulumi_log_get_projects_get_projects_args_doc}
class GetProjectsArgs {
  /// A list of project IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by project name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of log project. Valid values `Normal` and `Disable`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetProjectsArgs].
  /// [ids] A list of project IDs.
  /// [nameRegex] A regex string to filter results by project name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of log project. Valid values `Normal` and `Disable`.
  GetProjectsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetProjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

