// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// ARN of the SecurityHub Hub created in the account.
  final pulumi.Input<String>? arn;
  /// Whether to automatically enable new controls when they are added to standards that are enabled. By default, this is set to true, and new controls are enabled automatically. To not automatically enable new controls, set this to false.
  final pulumi.Input<bool>? autoEnableControls;
  /// Updates whether the calling account has consolidated control findings turned on. If the value for this field is set to `SECURITY_CONTROL`, Security Hub generates a single finding for a control check even when the check applies to multiple enabled standards. If the value for this field is set to `STANDARD_CONTROL`, Security Hub generates separate findings for a control check when the check applies to multiple enabled standards. For accounts that are part of an organization, this value can only be updated in the administrator account.
  final pulumi.Input<String>? controlFindingGenerator;
  /// Whether to enable the security standards that Security Hub has designated as automatically enabled including: ` AWS Foundational Security Best Practices v1.0.0` and `CIS AWS Foundations Benchmark v1.2.0`. Defaults to `true`.
  final pulumi.Input<bool>? enableDefaultStandards;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AccountState].
  /// [arn] ARN of the SecurityHub Hub created in the account.
  /// [autoEnableControls] Whether to automatically enable new controls when they are added to standards that are enabled. By default, this is set to true, and new controls are enabled automatically. To not automatically enable new controls, set this to false.
  /// [controlFindingGenerator] Updates whether the calling account has consolidated control findings turned on. If the value for this field is set to `SECURITY_CONTROL`, Security Hub generates a single finding for a control check even when the check applies to multiple enabled standards. If the value for this field is set to `STANDARD_CONTROL`, Security Hub generates separate findings for a control check when the check applies to multiple enabled standards. For accounts that are part of an organization, this value can only be updated in the administrator account.
  /// [enableDefaultStandards] Whether to enable the security standards that Security Hub has designated as automatically enabled including: ` AWS Foundational Security Best Practices v1.0.0` and `CIS AWS Foundations Benchmark v1.2.0`. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AccountState({
    this.arn,
    this.autoEnableControls,
    this.controlFindingGenerator,
    this.enableDefaultStandards,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoEnableControls': ?autoEnableControls,
      'controlFindingGenerator': ?controlFindingGenerator,
      'enableDefaultStandards': ?enableDefaultStandards,
      'region': ?region,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      autoEnableControls: map['autoEnableControls'] == null ? null : (map['autoEnableControls'] as bool).input(),
      controlFindingGenerator: map['controlFindingGenerator'] == null ? null : (map['controlFindingGenerator'] as String).input(),
      enableDefaultStandards: map['enableDefaultStandards'] == null ? null : (map['enableDefaultStandards'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

