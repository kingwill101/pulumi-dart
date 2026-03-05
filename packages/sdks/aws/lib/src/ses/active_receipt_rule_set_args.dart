// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_active_receipt_rule_set_active_receipt_rule_set_args_doc}
/// The set of arguments for ActiveReceiptRuleSet.
/// {@endtemplate}
/// {@macro pulumi_ses_active_receipt_rule_set_active_receipt_rule_set_args_doc}
class ActiveReceiptRuleSetArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the rule set
  final pulumi.Input<String> ruleSetName;

  /// Creates a new [ActiveReceiptRuleSetArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleSetName] The name of the rule set
  ActiveReceiptRuleSetArgs({
    this.region,
    required this.ruleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'ruleSetName': ruleSetName,
    };
  }

  factory ActiveReceiptRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return ActiveReceiptRuleSetArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleSetName: pulumi.Input.fromValue(map['ruleSetName'] as String),
    );
  }
}

