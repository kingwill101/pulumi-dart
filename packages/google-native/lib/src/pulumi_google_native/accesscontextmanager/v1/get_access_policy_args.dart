// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccessPolicy.
class GetAccessPolicyArgs {
  final pulumi.Input<String> accessPolicyId;

  GetAccessPolicyArgs({
    required this.accessPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    return map;
  }

  factory GetAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyArgs(
      accessPolicyId: pulumi.Input.asInput<String>(map['accessPolicyId']),
    );
  }
}
