// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v1_get_project_iam_policy_args_doc}
/// Arguments for getProjectIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v1_get_project_iam_policy_args_doc}
class GetProjectIamPolicyArgs {
  final pulumi.Input<String> resource;

  /// Creates a new [GetProjectIamPolicyArgs].
  /// [resource] Required.
  GetProjectIamPolicyArgs({
    required String resource,
  }) : resource = pulumi.Input.asInput<String>(resource);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resource'] = resource;
    return map;
  }

  factory GetProjectIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectIamPolicyArgs(
      resource: map['resource'] as String,
    );
  }
}
