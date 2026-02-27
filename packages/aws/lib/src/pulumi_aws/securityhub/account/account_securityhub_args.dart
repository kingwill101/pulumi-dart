// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Account.
class AccountSecurityhubArgs {
  /// Whether to automatically enable new controls when they are added to standards that are enabled. By default, this is set to true, and new controls are enabled automatically. To not automatically enable new controls, set this to false.
  final pulumi.Input<bool>? autoEnableControls;

  /// Updates whether the calling account has consolidated control findings turned on. If the value for this field is set to `SECURITY_CONTROL`, Security Hub generates a single finding for a control check even when the check applies to multiple enabled standards. If the value for this field is set to `STANDARD_CONTROL`, Security Hub generates separate findings for a control check when the check applies to multiple enabled standards. For accounts that are part of an organization, this value can only be updated in the administrator account.
  final pulumi.Input<String>? controlFindingGenerator;

  /// Whether to enable the security standards that Security Hub has designated as automatically enabled including: ` AWS Foundational Security Best Practices v1.0.0` and `CIS AWS Foundations Benchmark v1.2.0`. Defaults to `true`.
  final pulumi.Input<bool>? enableDefaultStandards;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  AccountSecurityhubArgs({
    this.autoEnableControls,
    this.controlFindingGenerator,
    this.enableDefaultStandards,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoEnableControlsValue = autoEnableControls;
    if (autoEnableControlsValue != null) {
      map['autoEnableControls'] = autoEnableControlsValue;
    }
    final controlFindingGeneratorValue = controlFindingGenerator;
    if (controlFindingGeneratorValue != null) {
      map['controlFindingGenerator'] = controlFindingGeneratorValue;
    }
    final enableDefaultStandardsValue = enableDefaultStandards;
    if (enableDefaultStandardsValue != null) {
      map['enableDefaultStandards'] = enableDefaultStandardsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AccountSecurityhubArgs.fromMap(Map<String, dynamic> map) {
    return AccountSecurityhubArgs(
      autoEnableControls:
          pulumi.Input.asOptionalInput<bool>(map['autoEnableControls']),
      controlFindingGenerator:
          pulumi.Input.asOptionalInput<String>(map['controlFindingGenerator']),
      enableDefaultStandards:
          pulumi.Input.asOptionalInput<bool>(map['enableDefaultStandards']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
