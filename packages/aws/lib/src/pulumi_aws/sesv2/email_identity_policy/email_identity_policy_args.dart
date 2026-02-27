// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EmailIdentityPolicy.
class EmailIdentityPolicyArgs {
  /// The email identity.
  final pulumi.Input<String> emailIdentity;

  /// The text of the policy in JSON format.
  final pulumi.Input<String> policy;

  /// The name of the policy.
  final pulumi.Input<String> policyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

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
      emailIdentity: pulumi.Input.asInput<String>(map['emailIdentity']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      policyName: pulumi.Input.asInput<String>(map['policyName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
