// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getV1IamPolicy.
class GetV1IamPolicyArgs {
  final Input<String> v1Id;

  GetV1IamPolicyArgs({
    required this.v1Id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['v1Id'] = v1Id;
    return map;
  }

  factory GetV1IamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetV1IamPolicyArgs(
      v1Id: Input.asInput<String>(map['v1Id']),
    );
  }
}
