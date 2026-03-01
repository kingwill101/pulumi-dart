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
    required pulumi.Output<String> pidOrganizationId,
    pulumi.Output<String>? pidProjectDesc,
    required pulumi.Output<String> pidProjectName,
  }) :
      pidOrganizationId = pulumi.Input.asInput<String>(pidOrganizationId),
      pidProjectDesc = pulumi.Input.asOptionalInput<String>(pidProjectDesc),
      pidProjectName = pulumi.Input.asInput<String>(pidProjectName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pidOrganizationId': pidOrganizationId,
      'pidProjectDesc': ?pidProjectDesc,
      'pidProjectName': pidProjectName,
    };
  }

  factory IndustrialPidProjectArgs.fromMap(Map<String, dynamic> map) {
    return IndustrialPidProjectArgs(
      pidOrganizationId: pulumi.Output.create<String>(map['pidOrganizationId'] as String),
      pidProjectDesc: map['pidProjectDesc'] == null ? null : pulumi.Output.create<String>(map['pidProjectDesc'] as String),
      pidProjectName: pulumi.Output.create<String>(map['pidProjectName'] as String),
    );
  }
}

