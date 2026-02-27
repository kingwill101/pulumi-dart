// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPolicy.
class GetPolicyArgs {
  /// The resource name of the policy to retrieve. Format: `policies/{policy_id}`.
  final pulumi.Input<String> name;

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
      name: pulumi.Input.asInput<String>(map['name']),
    );
  }
}
