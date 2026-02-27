// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPolicyTagIamPolicy.
class GetPolicyTagIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> policyTag;

  GetPolicyTagIamPolicyArgs({
    required this.policyTag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyTag'] = policyTag;
    return map;
  }

  factory GetPolicyTagIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyTagIamPolicyArgs(
      policyTag: pulumi.Input.asInput<String>(map['policyTag']),
    );
  }
}
