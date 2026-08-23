// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_markup_rule_args_doc}
/// Arguments for getMarkupRule.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_markup_rule_args_doc}
class GetMarkupRuleArgs {
  /// BillingAccount ID
  final pulumi.Input<String> billingAccountId;
  /// BillingProfile ID
  final pulumi.Input<String> billingProfileId;
  /// Markup rule name.
  final pulumi.Input<String> name;

  /// Creates a new [GetMarkupRuleArgs].
  /// [billingAccountId] BillingAccount ID
  /// [billingProfileId] BillingProfile ID
  /// [name] Markup rule name.
  const GetMarkupRuleArgs({
    required this.billingAccountId,
    required this.billingProfileId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'billingProfileId': billingProfileId,
      'name': name,
    };
  }

  factory GetMarkupRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetMarkupRuleArgs(
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      billingProfileId: pulumi.Input.fromValue(map['billingProfileId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
