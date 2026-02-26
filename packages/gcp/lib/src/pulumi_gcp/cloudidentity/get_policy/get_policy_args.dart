// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPolicy.
class GetPolicyArgs {
  /// The resource name of the policy to retrieve. Format: `policies/{policy_id}`.
  final Input<String> name;

  GetPolicyArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      name: Input.asInput<String>(map['name']),
    );
  }
}
