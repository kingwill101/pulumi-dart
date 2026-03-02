// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RemediationConfigurationExecutionControlsSsmControls {
  /// Maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. The default value is 10%.
  final pulumi.Input<int>? concurrentExecutionRatePercentage;
  /// Percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule. The default is 50%.
  final pulumi.Input<int>? errorPercentage;

  /// Creates a new [RemediationConfigurationExecutionControlsSsmControls].
  /// [concurrentExecutionRatePercentage] Maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. The default value is 10%.
  /// [errorPercentage] Percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule. The default is 50%.
  RemediationConfigurationExecutionControlsSsmControls({
    this.concurrentExecutionRatePercentage,
    this.errorPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrentExecutionRatePercentage': ?concurrentExecutionRatePercentage,
      'errorPercentage': ?errorPercentage,
    };
  }

  factory RemediationConfigurationExecutionControlsSsmControls.fromMap(Map<String, dynamic> map) {
    return RemediationConfigurationExecutionControlsSsmControls(
      concurrentExecutionRatePercentage: map['concurrentExecutionRatePercentage'] == null ? null : ((map['concurrentExecutionRatePercentage'] as int).input()).input(),
      errorPercentage: map['errorPercentage'] == null ? null : ((map['errorPercentage'] as int).input()).input(),
    );
  }
}

