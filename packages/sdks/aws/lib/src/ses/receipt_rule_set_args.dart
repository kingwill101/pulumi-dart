// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_receipt_rule_set_receipt_rule_set_args_doc}
/// The set of arguments for ReceiptRuleSet.
/// {@endtemplate}
/// {@macro pulumi_ses_receipt_rule_set_receipt_rule_set_args_doc}
class ReceiptRuleSetArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the rule set.
  final pulumi.Input<String> ruleSetName;

  /// Creates a new [ReceiptRuleSetArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleSetName] Name of the rule set.
  ReceiptRuleSetArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> ruleSetName,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleSetName = pulumi.Input.asInput<String>(ruleSetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'ruleSetName': ruleSetName,
    };
  }

  factory ReceiptRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleSetArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleSetName: pulumi.Output.create<String>(map['ruleSetName'] as String),
    );
  }
}

