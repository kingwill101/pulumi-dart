// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billingbudgets_v1_get_budget_args_doc}
/// Arguments for getBudget.
/// {@endtemplate}
/// {@macro pulumi_billingbudgets_v1_get_budget_args_doc}
class GetBudgetArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> budgetId;

  /// Creates a new [GetBudgetArgs].
  /// [billingAccountId] Required.
  /// [budgetId] Required.
  GetBudgetArgs({required String billingAccountId, required String budgetId})
    : billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      budgetId = pulumi.Input.asInput<String>(budgetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'budgetId': budgetId,
    };
  }

  factory GetBudgetArgs.fromMap(Map<String, dynamic> map) {
    return GetBudgetArgs(
      billingAccountId: map['billingAccountId'] as String,
      budgetId: map['budgetId'] as String,
    );
  }
}
