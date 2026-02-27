// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getApiConfigIamPolicy.
class GetApiConfigIamPolicyArgs {
  /// The API to attach the config to.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> api;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> apiConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  GetApiConfigIamPolicyArgs({
    required this.api,
    required this.apiConfig,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['api'] = api;
    map['apiConfig'] = apiConfig;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetApiConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiConfigIamPolicyArgs(
      api: pulumi.Input.asInput<String>(map['api']),
      apiConfig: pulumi.Input.asInput<String>(map['apiConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
