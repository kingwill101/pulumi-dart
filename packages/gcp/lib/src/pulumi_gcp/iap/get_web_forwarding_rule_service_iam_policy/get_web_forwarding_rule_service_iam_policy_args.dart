// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWebForwardingRuleServiceIamPolicy.
class GetWebForwardingRuleServiceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> forwardingRuleServiceName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  GetWebForwardingRuleServiceIamPolicyArgs({
    required this.forwardingRuleServiceName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['forwardingRuleServiceName'] = forwardingRuleServiceName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetWebForwardingRuleServiceIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetWebForwardingRuleServiceIamPolicyArgs(
      forwardingRuleServiceName:
          pulumi.Input.asInput<String>(map['forwardingRuleServiceName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
