// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_web_iam_policy_get_web_iam_policy_args_doc}
/// Arguments for getWebIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_web_iam_policy_get_web_iam_policy_args_doc}
class GetWebIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetWebIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  GetWebIamPolicyArgs({
    String? project,
  }) : project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetWebIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWebIamPolicyArgs(
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
