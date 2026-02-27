// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_budget_calculated_spend_actual_spend/get_budget_calculated_spend_actual_spend.dart';

class GetBudgetCalculatedSpend {
  final List<GetBudgetCalculatedSpendActualSpend> actualSpends;

  GetBudgetCalculatedSpend({
    required this.actualSpends,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actualSpends'] = pulumi.Input.encodeList<
        GetBudgetCalculatedSpendActualSpend,
        Map<String, dynamic>>(actualSpends, (value) => value.toMap());
    return map;
  }

  factory GetBudgetCalculatedSpend.fromMap(Map<String, dynamic> map) {
    return GetBudgetCalculatedSpend(
      actualSpends:
          pulumi.Input.decodeList<GetBudgetCalculatedSpendActualSpend>(
              map['actualSpends'],
              (value) => GetBudgetCalculatedSpendActualSpend.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
