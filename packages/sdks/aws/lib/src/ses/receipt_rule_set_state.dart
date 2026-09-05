// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReceiptRuleSet resources.
class ReceiptRuleSetState {
  /// SES receipt rule set ARN.
  final pulumi.Input<String?>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Name of the rule set.
  final pulumi.Input<String?>? ruleSetName;

  /// Creates a new [ReceiptRuleSetState].
  /// [arn] SES receipt rule set ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleSetName] Name of the rule set.
  const ReceiptRuleSetState({
    this.arn,
    this.region,
    this.ruleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'ruleSetName': ?ruleSetName,
    };
  }

  factory ReceiptRuleSetState.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleSetState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleSetName: (() { final guardedValue = map['ruleSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
