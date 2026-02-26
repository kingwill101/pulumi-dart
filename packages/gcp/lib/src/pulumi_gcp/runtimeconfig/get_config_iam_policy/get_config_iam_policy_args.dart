// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getConfigIamPolicy.
class GetConfigIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> config;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  GetConfigIamPolicyArgs({
    required this.config,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigIamPolicyArgs(
      config: Input.asInput<String>(map['config']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
