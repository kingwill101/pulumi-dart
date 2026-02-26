// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAccessPolicyIamPolicy.
class GetAccessPolicyIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> name;

  GetAccessPolicyIamPolicyArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetAccessPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyIamPolicyArgs(
      name: Input.asInput<String>(map['name']),
    );
  }
}
