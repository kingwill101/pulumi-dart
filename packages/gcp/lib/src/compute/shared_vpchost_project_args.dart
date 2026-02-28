// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_shared_vpchost_project_shared_vpchost_project_args_doc}
/// The set of arguments for SharedVPCHostProject.
/// {@endtemplate}
/// {@macro pulumi_compute_shared_vpchost_project_shared_vpchost_project_args_doc}
class SharedVPCHostProjectArgs {
  /// The ID of the project that will serve as a Shared VPC host project
  final pulumi.Input<String> project;

  /// Creates a new [SharedVPCHostProjectArgs].
  /// [project] The ID of the project that will serve as a Shared VPC host project
  SharedVPCHostProjectArgs({
    required String project,
  }) : project = pulumi.Input.asInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['project'] = project;
    return map;
  }

  factory SharedVPCHostProjectArgs.fromMap(Map<String, dynamic> map) {
    return SharedVPCHostProjectArgs(
      project: map['project'] as String,
    );
  }
}
