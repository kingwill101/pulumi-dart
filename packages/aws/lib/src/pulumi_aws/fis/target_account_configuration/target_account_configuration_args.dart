// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TargetAccountConfiguration.
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

  TargetAccountConfigurationArgs({
    required this.accountId,
    this.description,
    required this.experimentTemplateId,
    this.region,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['experimentTemplateId'] = experimentTemplateId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    return map;
  }

  factory TargetAccountConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return TargetAccountConfigurationArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      experimentTemplateId:
          pulumi.Input.asInput<String>(map['experimentTemplateId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asOptionalInput<String>(map['roleArn']),
    );
  }
}
