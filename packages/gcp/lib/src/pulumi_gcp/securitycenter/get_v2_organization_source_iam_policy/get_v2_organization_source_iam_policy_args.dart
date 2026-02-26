// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getV2OrganizationSourceIamPolicy.
class GetV2OrganizationSourceIamPolicyArgs {
  final Input<String> organization;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> source;

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
      organization: Input.asInput<String>(map['organization']),
      source: Input.asInput<String>(map['source']),
    );
  }
}
