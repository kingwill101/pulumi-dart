// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAccessPolicy.
class GetAccessPolicyArgs2 {
  final Input<String> accessPolicyId;

  GetAccessPolicyArgs2({
    required this.accessPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    return map;
  }

  factory GetAccessPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyArgs2(
      accessPolicyId: Input.asInput<String>(map['accessPolicyId']),
    );
  }
}
