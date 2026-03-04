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
      pidOrganizationId: (() {
        final guardedValue = map['pidOrganizationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pidProjectName: (() {
        final guardedValue = map['pidProjectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
