// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_imm_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_imm_project_project_args_doc}
class ProjectArgs {
  /// The name of Project.
  final pulumi.Input<String> project;

  /// The service role authorized to the Intelligent Media Management service to access other cloud resources. Default value: `AliyunIMMDefaultRole`. You can also create authorization  roles through the `alicloud.ram.Role`.
  final pulumi.Input<String>? serviceRole;

  /// Creates a new [ProjectArgs].
  /// [project] The name of Project.
  /// [serviceRole] The service role authorized to the Intelligent Media Management service to access other cloud resources. Default value: `AliyunIMMDefaultRole`. You can also create authorization  roles through the `alicloud.ram.Role`.
  ProjectArgs({required this.project, this.serviceRole});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': project, 'serviceRole': ?serviceRole};
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      project: pulumi.Input.fromValue(map['project'] as String),
      serviceRole: (() {
        final guardedValue = map['serviceRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
