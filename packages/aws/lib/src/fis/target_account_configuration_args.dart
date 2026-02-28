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
  final pulumi.Input<String>? description;
  /// Experiment Template ID.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> experimentTemplateId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM Role for the target account.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [TargetAccountConfigurationArgs].
  /// [accountId] Account ID of the target account.
  /// [description] Description of the target account.
  /// [experimentTemplateId] Experiment Template ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM Role for the target account.
  TargetAccountConfigurationArgs({
    required String accountId,
    String? description,
    required String experimentTemplateId,
    String? region,
    String? roleArn,
  }) :
      accountId = pulumi.Input.asInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      experimentTemplateId = pulumi.Input.asInput<String>(experimentTemplateId),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn);

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
      accountId: map['accountId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      experimentTemplateId: map['experimentTemplateId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
    );
  }
}

