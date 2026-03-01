// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretsmanager_secret_policy_secret_policy_args_doc}
/// The set of arguments for SecretPolicy.
/// {@endtemplate}
/// {@macro pulumi_secretsmanager_secret_policy_secret_policy_args_doc}
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

  /// Creates a new [SecretPolicyArgs].
  /// [blockPublicPolicy] Makes an optional API call to Zelkova to validate the Resource Policy to prevent broad access to your secret.
  /// [policy] Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Unlike `aws.secretsmanager.Secret`, where `policy` can be set to `"{}"` to delete the policy, `"{}"` is not a valid policy since `policy` is required.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretArn] Secret ARN.
  SecretPolicyArgs({
    bool? blockPublicPolicy,
    required String policy,
    String? region,
    required String secretArn,
  }) : blockPublicPolicy = pulumi.Input.asOptionalInput<bool>(
         blockPublicPolicy,
       ),
       policy = pulumi.Input.asInput<String>(policy),
       region = pulumi.Input.asOptionalInput<String>(region),
       secretArn = pulumi.Input.asInput<String>(secretArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicPolicy': ?blockPublicPolicy,
      'policy': policy,
      'region': ?region,
      'secretArn': secretArn,
    };
  }

  factory SecretPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SecretPolicyArgs(
      blockPublicPolicy: map['blockPublicPolicy'] == null
          ? null
          : map['blockPublicPolicy'] as bool,
      policy: map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      secretArn: map['secretArn'] as String,
    );
  }
}
