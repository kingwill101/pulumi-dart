// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetCostFilter {
  /// Name of the cost filter. Valid values are `AZ`, `BillingEntity`, `CostCategory`, `InstanceType`, `InvoicingEntity`, `LegalEntityName`, `LinkedAccount`, `Operation`, `PurchaseType`, `Region`, `Service`, `TagKeyValue`, `UsageType`, and `UsageTypeGroup`.
  final pulumi.Input<String> name;
  /// List of values used for filtering.
  final pulumi.Input<List<String>> values;

  /// Creates a new [BudgetCostFilter].
  /// [name] Name of the cost filter. Valid values are `AZ`, `BillingEntity`, `CostCategory`, `InstanceType`, `InvoicingEntity`, `LegalEntityName`, `LinkedAccount`, `Operation`, `PurchaseType`, `Region`, `Service`, `TagKeyValue`, `UsageType`, and `UsageTypeGroup`.
  /// [values] List of values used for filtering.
  const BudgetCostFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory BudgetCostFilter.fromMap(Map<String, dynamic> map) {
    return BudgetCostFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
