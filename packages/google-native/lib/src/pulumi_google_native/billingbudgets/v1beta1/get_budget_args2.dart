// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBudget.
class GetBudgetArgs2 {
  final Input<String> billingAccountId;
  final Input<String> budgetId;

  GetBudgetArgs2({
    required this.billingAccountId,
    required this.budgetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['budgetId'] = budgetId;
    return map;
  }

  factory GetBudgetArgs2.fromMap(Map<String, dynamic> map) {
    return GetBudgetArgs2(
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
      budgetId: Input.asInput<String>(map['budgetId']),
    );
  }
}
