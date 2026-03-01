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
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? pidOrganizationId,
    String? pidProjectName,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pidOrganizationId = pulumi.Input.asOptionalInput<String>(pidOrganizationId),
      pidProjectName = pulumi.Input.asOptionalInput<String>(pidProjectName);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pidOrganizationId: map['pidOrganizationId'] == null ? null : map['pidOrganizationId'] as String,
      pidProjectName: map['pidProjectName'] == null ? null : map['pidProjectName'] as String,
    );
  }
}

