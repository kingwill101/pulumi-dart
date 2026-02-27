// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SecretPolicy.
class SecretPolicyArgs {
  /// Makes an optional API call to Zelkova to validate the Resource Policy to prevent broad access to your secret.
  final pulumi.Input<bool>? blockPublicPolicy;

  /// Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Unlike `aws.secretsmanager.Secret`, where `policy` can be set to `"{}"` to delete the policy, `"{}"` is not a valid policy since `policy` is required.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Secret ARN.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> secretArn;

  SecretPolicyArgs({
    this.blockPublicPolicy,
    required this.policy,
    this.region,
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blockPublicPolicyValue = blockPublicPolicy;
    if (blockPublicPolicyValue != null) {
      map['blockPublicPolicy'] = blockPublicPolicyValue;
    }
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secretArn'] = secretArn;
    return map;
  }

  factory SecretPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SecretPolicyArgs(
      blockPublicPolicy:
          pulumi.Input.asOptionalInput<bool>(map['blockPublicPolicy']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      secretArn: pulumi.Input.asInput<String>(map['secretArn']),
    );
  }
}
