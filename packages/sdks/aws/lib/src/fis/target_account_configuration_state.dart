// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TargetAccountConfiguration resources.
class TargetAccountConfigurationState {
  /// Account ID of the target account.
  final pulumi.Input<String>? accountId;
  /// Description of the target account.
  final pulumi.Input<String>? description;
  /// Experiment Template ID.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? experimentTemplateId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM Role for the target account.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [TargetAccountConfigurationState].
  /// [accountId] Account ID of the target account.
  /// [description] Description of the target account.
  /// [experimentTemplateId] Experiment Template ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM Role for the target account.
  TargetAccountConfigurationState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? experimentTemplateId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      experimentTemplateId = pulumi.Input.asOptionalInput<String>(experimentTemplateId),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'experimentTemplateId': ?experimentTemplateId,
      'region': ?region,
      'roleArn': ?roleArn,
    };
  }

  factory TargetAccountConfigurationState.fromMap(Map<String, dynamic> map) {
    return TargetAccountConfigurationState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      experimentTemplateId: map['experimentTemplateId'] == null ? null : pulumi.Output.create<String>(map['experimentTemplateId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
    );
  }
}

