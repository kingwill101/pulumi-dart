// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccessPolicyIamPolicy.
class GetAccessPolicyIamPolicyArgs {
  final pulumi.Input<String> accessPolicyId;

  GetAccessPolicyIamPolicyArgs({
    required this.accessPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    return map;
  }

  factory GetAccessPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyIamPolicyArgs(
      accessPolicyId: pulumi.Input.asInput<String>(map['accessPolicyId']),
    );
  }
}
