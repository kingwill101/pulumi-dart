// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_budget_auto_adjust_data_historical_option/get_budget_auto_adjust_data_historical_option.dart';

class GetBudgetAutoAdjustData {
  /// (Required) - The string that defines whether your budget auto-adjusts based on historical or forecasted data. Valid values: `FORECAST`,`HISTORICAL`.
  final String autoAdjustType;

  /// (Optional) - Configuration block of Historical Options. Required for `auto_adjust_type` of `HISTORICAL` Configuration block that defines the historical data that your auto-adjusting budget is based on.
  final List<GetBudgetAutoAdjustDataHistoricalOption> historicalOptions;

  /// (Optional) - The last time that your budget was auto-adjusted.
  final String lastAutoAdjustTime;

  GetBudgetAutoAdjustData({
    required this.autoAdjustType,
    required this.historicalOptions,
    required this.lastAutoAdjustTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoAdjustType'] = autoAdjustType;
    map['historicalOptions'] = Input.encodeList<
        GetBudgetAutoAdjustDataHistoricalOption,
        Map<String, dynamic>>(historicalOptions, (value) => value.toMap());
    map['lastAutoAdjustTime'] = lastAutoAdjustTime;
    return map;
  }

  factory GetBudgetAutoAdjustData.fromMap(Map<String, dynamic> map) {
    return GetBudgetAutoAdjustData(
      autoAdjustType: map['autoAdjustType'] as String,
      historicalOptions:
          Input.decodeList<GetBudgetAutoAdjustDataHistoricalOption>(
              map['historicalOptions'],
              (value) => GetBudgetAutoAdjustDataHistoricalOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lastAutoAdjustTime: map['lastAutoAdjustTime'] as String,
    );
  }
}
