// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IdentityPolicy.
class IdentityPolicyArgs {
  /// Name or Amazon Resource Name (ARN) of the SES Identity.
  final Input<String> identity;

  /// Name of the policy.
  final Input<String>? name;

  /// JSON string of the policy.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  IdentityPolicyArgs({
    required this.identity,
    this.name,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identity'] = identity;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory IdentityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return IdentityPolicyArgs(
      identity: Input.asInput<String>(map['identity']),
      name: Input.asOptionalInput<String>(map['name']),
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
