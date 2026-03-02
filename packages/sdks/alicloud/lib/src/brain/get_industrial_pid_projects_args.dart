// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_brain_get_industrial_pid_projects_get_industrial_pid_projects_args_doc}
/// Arguments for getIndustrialPidProjects.
/// {@endtemplate}
/// {@macro pulumi_brain_get_industrial_pid_projects_get_industrial_pid_projects_args_doc}
class GetIndustrialPidProjectsArgs {
  /// A list of Pid Project IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Pid Project name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of Pid Organization.
  final pulumi.Input<String>? pidOrganizationId;
  /// The name of Pid Project.
  final pulumi.Input<String>? pidProjectName;

  /// Creates a new [GetIndustrialPidProjectsArgs].
  /// [ids] A list of Pid Project IDs.
  /// [nameRegex] A regex string to filter results by Pid Project name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pidOrganizationId] The ID of Pid Organization.
  /// [pidProjectName] The name of Pid Project.
  GetIndustrialPidProjectsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pidOrganizationId,
    this.pidProjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pidOrganizationId': ?pidOrganizationId,
      'pidProjectName': ?pidProjectName,
    };
  }

  factory GetIndustrialPidProjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetIndustrialPidProjectsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pidOrganizationId: map['pidOrganizationId'] == null ? null : (map['pidOrganizationId'] as String).input(),
      pidProjectName: map['pidProjectName'] == null ? null : (map['pidProjectName'] as String).input(),
    );
  }
}

