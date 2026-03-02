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
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

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
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

