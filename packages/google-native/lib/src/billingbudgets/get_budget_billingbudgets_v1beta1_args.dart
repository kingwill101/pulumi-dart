// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billingbudgets_v1beta1_get_budget_billingbudgets_v1beta1_args_doc}
/// Arguments for getBudget.
/// {@endtemplate}
/// {@macro pulumi_billingbudgets_v1beta1_get_budget_billingbudgets_v1beta1_args_doc}
class GetBudgetBillingbudgetsV1beta1Args {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> budgetId;

  /// Creates a new [GetBudgetBillingbudgetsV1beta1Args].
  /// [billingAccountId] Required.
  /// [budgetId] Required.
  GetBudgetBillingbudgetsV1beta1Args({
    required String billingAccountId,
    required String budgetId,
  })  : billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
        budgetId = pulumi.Input.asInput<String>(budgetId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['budgetId'] = budgetId;
    return map;
  }

  factory GetBudgetBillingbudgetsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetBudgetBillingbudgetsV1beta1Args(
      billingAccountId: map['billingAccountId'] as String,
      budgetId: map['budgetId'] as String,
    );
  }
}
