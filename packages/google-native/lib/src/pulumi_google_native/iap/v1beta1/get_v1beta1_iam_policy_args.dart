// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getV1beta1IamPolicy.
class GetV1beta1IamPolicyArgs {
  final Input<String> v1beta1Id;

  GetV1beta1IamPolicyArgs({
    required this.v1beta1Id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['v1beta1Id'] = v1beta1Id;
    return map;
  }

  factory GetV1beta1IamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetV1beta1IamPolicyArgs(
      v1beta1Id: Input.asInput<String>(map['v1beta1Id']),
    );
  }
}
