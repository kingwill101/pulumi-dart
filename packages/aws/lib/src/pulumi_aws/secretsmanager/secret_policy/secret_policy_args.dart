// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SecretPolicy.
class SecretPolicyArgs {
  /// Makes an optional API call to Zelkova to validate the Resource Policy to prevent broad access to your secret.
  final Input<bool>? blockPublicPolicy;

  /// Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Unlike <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span>, where <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> can be set to `"{}"` to delete the policy, `"{}"` is not a valid policy since <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> is required.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Secret ARN.
  ///
  /// The following arguments are optional:
  final Input<String> secretArn;

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
      blockPublicPolicy: Input.asOptionalInput<bool>(map['blockPublicPolicy']),
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      secretArn: Input.asInput<String>(map['secretArn']),
    );
  }
}
