// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAccessPolicy.
class GetAccessPolicyArgs {
  final Input<String> accessPolicyId;

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
      accessPolicyId: Input.asInput<String>(map['accessPolicyId']),
    );
  }
}
