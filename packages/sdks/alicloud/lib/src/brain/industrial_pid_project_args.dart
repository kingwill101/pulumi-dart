// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_brain_industrial_pid_project_industrial_pid_project_args_doc}
/// The set of arguments for IndustrialPidProject.
/// {@endtemplate}
/// {@macro pulumi_brain_industrial_pid_project_industrial_pid_project_args_doc}
class IndustrialPidProjectArgs {
  /// The ID of Pid Organization.
  final pulumi.Input<String> pidOrganizationId;
  /// The description of Pid Project.
  final pulumi.Input<String>? pidProjectDesc;
  /// The name of Pid Project.
  final pulumi.Input<String> pidProjectName;

  /// Creates a new [IndustrialPidProjectArgs].
  /// [pidOrganizationId] The ID of Pid Organization.
  /// [pidProjectDesc] The description of Pid Project.
  /// [pidProjectName] The name of Pid Project.
  IndustrialPidProjectArgs({
    required this.pidOrganizationId,
    this.pidProjectDesc,
    required this.pidProjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pidOrganizationId': pidOrganizationId,
      'pidProjectDesc': ?pidProjectDesc,
      'pidProjectName': pidProjectName,
    };
  }

  factory IndustrialPidProjectArgs.fromMap(Map<String, dynamic> map) {
    return IndustrialPidProjectArgs(
      pidOrganizationId: (map['pidOrganizationId'] as String).input(),
      pidProjectDesc: map['pidProjectDesc'] == null ? null : (map['pidProjectDesc'] as String).input(),
      pidProjectName: (map['pidProjectName'] as String).input(),
    );
  }
}

