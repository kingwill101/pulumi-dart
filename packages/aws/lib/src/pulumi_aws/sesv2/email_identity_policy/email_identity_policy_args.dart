// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EmailIdentityPolicy.
class EmailIdentityPolicyArgs {
  /// The email identity.
  final Input<String> emailIdentity;

  /// The text of the policy in JSON format.
  final Input<String> policy;

  /// The name of the policy.
  final Input<String> policyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  EmailIdentityPolicyArgs({
    required this.emailIdentity,
    required this.policy,
    required this.policyName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['emailIdentity'] = emailIdentity;
    map['policy'] = policy;
    map['policyName'] = policyName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory EmailIdentityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EmailIdentityPolicyArgs(
      emailIdentity: Input.asInput<String>(map['emailIdentity']),
      policy: Input.asInput<String>(map['policy']),
      policyName: Input.asInput<String>(map['policyName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
