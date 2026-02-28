// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_get_active_receipt_rule_set_get_active_receipt_rule_set_args_doc}
/// Arguments for getActiveReceiptRuleSet.
/// {@endtemplate}
/// {@macro pulumi_ses_get_active_receipt_rule_set_get_active_receipt_rule_set_args_doc}
class GetActiveReceiptRuleSetArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetActiveReceiptRuleSetArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetActiveReceiptRuleSetArgs({
    String? region,
  }) : region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetActiveReceiptRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return GetActiveReceiptRuleSetArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
