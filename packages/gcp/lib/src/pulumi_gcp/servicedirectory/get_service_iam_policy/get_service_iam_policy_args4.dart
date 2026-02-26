// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceIamPolicy.
class GetServiceIamPolicyArgs4 {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> name;

  GetServiceIamPolicyArgs4({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetServiceIamPolicyArgs4.fromMap(Map<String, dynamic> map) {
    return GetServiceIamPolicyArgs4(
      name: Input.asInput<String>(map['name']),
    );
  }
}
