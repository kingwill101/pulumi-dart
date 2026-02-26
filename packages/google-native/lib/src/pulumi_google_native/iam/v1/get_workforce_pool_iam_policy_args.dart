// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkforcePoolIamPolicy.
class GetWorkforcePoolIamPolicyArgs {
  final Input<String> location;
  final Input<String> workforcePoolId;

  GetWorkforcePoolIamPolicyArgs({
    required this.location,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['workforcePoolId'] = workforcePoolId;
    return map;
  }

  factory GetWorkforcePoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      workforcePoolId: Input.asInput<String>(map['workforcePoolId']),
    );
  }
}
