// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWebBackendServiceIamPolicy.
class GetWebBackendServiceIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> webBackendService;

  GetWebBackendServiceIamPolicyArgs({
    this.project,
    required this.webBackendService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['webBackendService'] = webBackendService;
    return map;
  }

  factory GetWebBackendServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWebBackendServiceIamPolicyArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      webBackendService: pulumi.Input.asInput<String>(map['webBackendService']),
    );
  }
}
