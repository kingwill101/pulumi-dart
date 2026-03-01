// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataProtectionPolicy resources.
class DataProtectionPolicyState {
  /// The ARN of the SNS topic
  final pulumi.Input<String>? arn;
  /// The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DataProtectionPolicyState].
  /// [arn] The ARN of the SNS topic
  /// [policy] The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DataProtectionPolicyState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory DataProtectionPolicyState.fromMap(Map<String, dynamic> map) {
    return DataProtectionPolicyState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

