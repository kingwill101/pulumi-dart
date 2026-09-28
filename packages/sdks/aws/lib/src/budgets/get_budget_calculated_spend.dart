// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_calculated_spend_actual_spend.dart';

class GetBudgetCalculatedSpend {
  /// Amount of cost, usage, RI units, or Savings Plans units used. See `actualSpend` Block for details.
  final pulumi.Input<List<GetBudgetCalculatedSpendActualSpend>> actualSpends;

  /// Creates a new [GetBudgetCalculatedSpend].
  /// [actualSpends] Amount of cost, usage, RI units, or Savings Plans units used. See `actualSpend` Block for details.
  const GetBudgetCalculatedSpend({
    required this.actualSpends,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualSpends': pulumi.Input.mapInputValue<List<GetBudgetCalculatedSpendActualSpend>, List<Map<String, dynamic>>>(actualSpends, (value) => pulumi.Input.encodeList<GetBudgetCalculatedSpendActualSpend, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBudgetCalculatedSpend.fromMap(Map<String, dynamic> map) {
    return GetBudgetCalculatedSpend(
      actualSpends: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBudgetCalculatedSpendActualSpend>(map['actualSpends']!, (value) => GetBudgetCalculatedSpendActualSpend.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
