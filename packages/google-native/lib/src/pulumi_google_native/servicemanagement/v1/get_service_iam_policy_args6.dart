// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceIamPolicy.
class GetServiceIamPolicyArgs6 {
  final Input<String> serviceId;

  GetServiceIamPolicyArgs6({
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceId'] = serviceId;
    return map;
  }

  factory GetServiceIamPolicyArgs6.fromMap(Map<String, dynamic> map) {
    return GetServiceIamPolicyArgs6(
      serviceId: Input.asInput<String>(map['serviceId']),
    );
  }
}
