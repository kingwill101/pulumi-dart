// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetCalculatedSpendActualSpend {
  /// The cost or usage amount that's associated with a budget forecast, actual spend, or budget threshold. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  final pulumi.Input<String> amount;
  /// The unit of measurement that's used for the budget forecast, actual spend, or budget threshold, such as USD or GBP. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  final pulumi.Input<String> unit;

  /// Creates a new [GetBudgetCalculatedSpendActualSpend].
  /// [amount] The cost or usage amount that's associated with a budget forecast, actual spend, or budget threshold. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  /// [unit] The unit of measurement that's used for the budget forecast, actual spend, or budget threshold, such as USD or GBP. Length Constraints: Minimum length of `1`. Maximum length of `2147483647`.
  const GetBudgetCalculatedSpendActualSpend({
    required this.amount,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'unit': unit,
    };
  }

  factory GetBudgetCalculatedSpendActualSpend.fromMap(Map<String, dynamic> map) {
    return GetBudgetCalculatedSpendActualSpend(
      amount: pulumi.Input.fromValue(map['amount'] as String),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}
