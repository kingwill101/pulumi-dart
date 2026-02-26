// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWebTypeAppEngineIamPolicy.
class GetWebTypeAppEngineIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> appId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  GetWebTypeAppEngineIamPolicyArgs({
    required this.appId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetWebTypeAppEngineIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWebTypeAppEngineIamPolicyArgs(
      appId: Input.asInput<String>(map['appId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
