// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBudget.
class GetBudgetBillingbudgetsV1beta1Args {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> budgetId;

  GetBudgetBillingbudgetsV1beta1Args({
    required this.billingAccountId,
    required this.budgetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['budgetId'] = budgetId;
    return map;
  }

  factory GetBudgetBillingbudgetsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetBudgetBillingbudgetsV1beta1Args(
      billingAccountId: pulumi.Input.asInput<String>(map['billingAccountId']),
      budgetId: pulumi.Input.asInput<String>(map['budgetId']),
    );
  }
}
