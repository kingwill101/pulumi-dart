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
  GetMarkupRuleArgs({
    required String billingAccountId,
    required String billingProfileId,
    required String name,
  }) :
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      billingProfileId = pulumi.Input.asInput<String>(billingProfileId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'billingProfileId': billingProfileId,
      'name': name,
    };
  }

  factory GetMarkupRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetMarkupRuleArgs(
      billingAccountId: map['billingAccountId'] as String,
      billingProfileId: map['billingProfileId'] as String,
      name: map['name'] as String,
    );
  }
}

