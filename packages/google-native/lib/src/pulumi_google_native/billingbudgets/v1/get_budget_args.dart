// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBudget.
class GetBudgetArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> budgetId;

  GetBudgetArgs({
    required this.billingAccountId,
    required this.budgetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['budgetId'] = budgetId;
    return map;
  }

  factory GetBudgetArgs.fromMap(Map<String, dynamic> map) {
    return GetBudgetArgs(
      billingAccountId: pulumi.Input.asInput<String>(map['billingAccountId']),
      budgetId: pulumi.Input.asInput<String>(map['budgetId']),
    );
  }
}
