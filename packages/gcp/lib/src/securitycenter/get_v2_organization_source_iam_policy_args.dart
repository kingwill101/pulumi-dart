// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_get_v2_organization_source_iam_policy_get_v2_organization_source_iam_policy_args_doc}
/// Arguments for getV2OrganizationSourceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_get_v2_organization_source_iam_policy_get_v2_organization_source_iam_policy_args_doc}
class GetV2OrganizationSourceIamPolicyArgs {
  final pulumi.Input<String> organization;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> source;

  /// Creates a new [GetV2OrganizationSourceIamPolicyArgs].
  /// [organization] Required.
  /// [source] Used to find the parent resource to bind the IAM policy to
  GetV2OrganizationSourceIamPolicyArgs({
    required String organization,
    required String source,
  })  : organization = pulumi.Input.asInput<String>(organization),
        source = pulumi.Input.asInput<String>(source);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organization'] = organization;
    map['source'] = source;
    return map;
  }

  factory GetV2OrganizationSourceIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetV2OrganizationSourceIamPolicyArgs(
      organization: map['organization'] as String,
      source: map['source'] as String,
    );
  }
}
