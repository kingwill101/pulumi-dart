// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIamPolicy.
class GetIamPolicyArgs4 {
  /// The fully-qualified name of the service account to apply policy to.
  final Input<String> serviceAccountId;

  GetIamPolicyArgs4({
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAccountId'] = serviceAccountId;
    return map;
  }

  factory GetIamPolicyArgs4.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyArgs4(
      serviceAccountId: Input.asInput<String>(map['serviceAccountId']),
    );
  }
}
