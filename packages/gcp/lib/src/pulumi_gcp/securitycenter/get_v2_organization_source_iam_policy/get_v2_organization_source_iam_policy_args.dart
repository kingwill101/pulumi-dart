// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getV2OrganizationSourceIamPolicy.
class GetV2OrganizationSourceIamPolicyArgs {
  final pulumi.Input<String> organization;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> source;

  GetV2OrganizationSourceIamPolicyArgs({
    required this.organization,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organization'] = organization;
    map['source'] = source;
    return map;
  }

  factory GetV2OrganizationSourceIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetV2OrganizationSourceIamPolicyArgs(
      organization: pulumi.Input.asInput<String>(map['organization']),
      source: pulumi.Input.asInput<String>(map['source']),
    );
  }
}
