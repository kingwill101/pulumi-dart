// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceIamPolicy.
class GetServiceIamPolicyArgs3 {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> serviceName;

  GetServiceIamPolicyArgs3({
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetServiceIamPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return GetServiceIamPolicyArgs3(
      serviceName: Input.asInput<String>(map['serviceName']),
    );
  }
}
