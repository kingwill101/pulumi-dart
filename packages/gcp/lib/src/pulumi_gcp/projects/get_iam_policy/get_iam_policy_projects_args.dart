// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIamPolicy.
class GetIamPolicyProjectsArgs {
  /// The project id of the target project. This is not
  /// inferred from the provider.
  final pulumi.Input<String> project;

  GetIamPolicyProjectsArgs({
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['project'] = project;
    return map;
  }

  factory GetIamPolicyProjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyProjectsArgs(
      project: pulumi.Input.asInput<String>(map['project']),
    );
  }
}
