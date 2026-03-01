// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// The name of Project.
  final pulumi.Input<String>? project;
  /// The service role authorized to the Intelligent Media Management service to access other cloud resources. Default value: `AliyunIMMDefaultRole`. You can also create authorization  roles through the `alicloud.ram.Role`.
  final pulumi.Input<String>? serviceRole;

  /// Creates a new [ProjectState].
  /// [project] The name of Project.
  /// [serviceRole] The service role authorized to the Intelligent Media Management service to access other cloud resources. Default value: `AliyunIMMDefaultRole`. You can also create authorization  roles through the `alicloud.ram.Role`.
  ProjectState({
    pulumi.Output<String>? project,
    pulumi.Output<String>? serviceRole,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceRole = pulumi.Input.asOptionalInput<String>(serviceRole);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'serviceRole': ?serviceRole,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceRole: map['serviceRole'] == null ? null : pulumi.Output.create<String>(map['serviceRole'] as String),
    );
  }
}

