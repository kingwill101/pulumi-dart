// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAccessPolicyIamPolicy.
class GetAccessPolicyIamPolicyArgs {
  final Input<String> accessPolicyId;

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
      accessPolicyId: Input.asInput<String>(map['accessPolicyId']),
    );
  }
}
