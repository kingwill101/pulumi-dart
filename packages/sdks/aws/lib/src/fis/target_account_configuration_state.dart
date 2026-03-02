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
    this.accountId,
    this.description,
    this.experimentTemplateId,
    this.region,
    this.roleArn,
  });

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
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      experimentTemplateId: map['experimentTemplateId'] == null ? null : ((map['experimentTemplateId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
    );
  }
}

