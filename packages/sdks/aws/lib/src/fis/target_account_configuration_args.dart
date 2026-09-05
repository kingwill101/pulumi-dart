// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fis_target_account_configuration_target_account_configuration_args_doc}
/// The set of arguments for TargetAccountConfiguration.
/// {@endtemplate}
/// {@macro pulumi_fis_target_account_configuration_target_account_configuration_args_doc}
class TargetAccountConfigurationArgs {
  /// Account ID of the target account.
  final pulumi.Input<String> accountId;
  /// Description of the target account.
  final pulumi.Input<String?>? description;
  /// Experiment Template ID.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> experimentTemplateId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the IAM Role for the target account.
  final pulumi.Input<String?>? roleArn;

  /// Creates a new [TargetAccountConfigurationArgs].
  /// [accountId] Account ID of the target account.
  /// [description] Description of the target account.
  /// [experimentTemplateId] Experiment Template ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM Role for the target account.
  const TargetAccountConfigurationArgs({
    required this.accountId,
    this.description,
    required this.experimentTemplateId,
    this.region,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'experimentTemplateId': experimentTemplateId,
      'region': ?region,
      'roleArn': ?roleArn,
    };
  }

  factory TargetAccountConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return TargetAccountConfigurationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      experimentTemplateId: pulumi.Input.fromValue(map['experimentTemplateId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
