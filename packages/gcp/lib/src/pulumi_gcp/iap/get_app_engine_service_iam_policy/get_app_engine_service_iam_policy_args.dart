// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAppEngineServiceIamPolicy.
class GetAppEngineServiceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> appId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> service;

  GetAppEngineServiceIamPolicyArgs({
    required this.appId,
    this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['service'] = service;
    return map;
  }

  factory GetAppEngineServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAppEngineServiceIamPolicyArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      service: pulumi.Input.asInput<String>(map['service']),
    );
  }
}
