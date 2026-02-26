// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_budget_calculated_spend_actual_spend/get_budget_calculated_spend_actual_spend.dart';

class GetBudgetCalculatedSpend {
  final List<GetBudgetCalculatedSpendActualSpend> actualSpends;

  GetBudgetCalculatedSpend({
    required this.actualSpends,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actualSpends'] = Input.encodeList<GetBudgetCalculatedSpendActualSpend,
        Map<String, dynamic>>(actualSpends, (value) => value.toMap());
    return map;
  }

  factory GetBudgetCalculatedSpend.fromMap(Map<String, dynamic> map) {
    return GetBudgetCalculatedSpend(
      actualSpends: Input.decodeList<GetBudgetCalculatedSpendActualSpend>(
          map['actualSpends'],
          (value) => GetBudgetCalculatedSpendActualSpend.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
