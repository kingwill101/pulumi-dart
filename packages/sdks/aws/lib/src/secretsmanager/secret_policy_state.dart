// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecretPolicy resources.
class SecretPolicyState {
  /// Makes an optional API call to Zelkova to validate the Resource Policy to prevent broad access to your secret.
  final pulumi.Input<bool>? blockPublicPolicy;
  /// Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Unlike `aws.secretsmanager.Secret`, where `policy` can be set to `"{}"` to delete the policy, `"{}"` is not a valid policy since `policy` is required.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Secret ARN.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? secretArn;

  /// Creates a new [SecretPolicyState].
  /// [blockPublicPolicy] Makes an optional API call to Zelkova to validate the Resource Policy to prevent broad access to your secret.
  /// [policy] Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Unlike `aws.secretsmanager.Secret`, where `policy` can be set to `"{}"` to delete the policy, `"{}"` is not a valid policy since `policy` is required.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretArn] Secret ARN.
  SecretPolicyState({
    pulumi.Output<bool>? blockPublicPolicy,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretArn,
  }) :
      blockPublicPolicy = pulumi.Input.asOptionalInput<bool>(blockPublicPolicy),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretArn = pulumi.Input.asOptionalInput<String>(secretArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicPolicy': ?blockPublicPolicy,
      'policy': ?policy,
      'region': ?region,
      'secretArn': ?secretArn,
    };
  }

  factory SecretPolicyState.fromMap(Map<String, dynamic> map) {
    return SecretPolicyState(
      blockPublicPolicy: map['blockPublicPolicy'] == null ? null : pulumi.Output.create<bool>(map['blockPublicPolicy'] as bool),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretArn: map['secretArn'] == null ? null : pulumi.Output.create<String>(map['secretArn'] as String),
    );
  }
}

