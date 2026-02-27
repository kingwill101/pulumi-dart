// ignore_for_file: unused_element, unnecessary_cast

import '../budget_auto_adjust_data_historical_options/budget_auto_adjust_data_historical_options.dart';

class BudgetAutoAdjustData {
  /// (Required) - The string that defines whether your budget auto-adjusts based on historical or forecasted data. Valid values: `FORECAST`,`HISTORICAL`
  final String autoAdjustType;

  /// (Optional) - Configuration block of Historical Options. Required for `auto_adjust_type` of `HISTORICAL` Configuration block that defines the historical data that your auto-adjusting budget is based on.
  final BudgetAutoAdjustDataHistoricalOptions? historicalOptions;

  /// (Optional) - The last time that your budget was auto-adjusted.
  final String? lastAutoAdjustTime;

  BudgetAutoAdjustData({
    required this.autoAdjustType,
    this.historicalOptions,
    this.lastAutoAdjustTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoAdjustType'] = autoAdjustType;
    final historicalOptionsValue = historicalOptions;
    if (historicalOptionsValue != null) {
      map['historicalOptions'] = historicalOptionsValue.toMap();
    }
    final lastAutoAdjustTimeValue = lastAutoAdjustTime;
    if (lastAutoAdjustTimeValue != null) {
      map['lastAutoAdjustTime'] = lastAutoAdjustTimeValue;
    }
    return map;
  }

  factory BudgetAutoAdjustData.fromMap(Map<String, dynamic> map) {
    return BudgetAutoAdjustData(
      autoAdjustType: map['autoAdjustType'] as String,
      historicalOptions: map['historicalOptions'] == null
          ? null
          : BudgetAutoAdjustDataHistoricalOptions.fromMap(
              (map['historicalOptions'] as Map).cast<String, dynamic>()),
      lastAutoAdjustTime: map['lastAutoAdjustTime'] == null
          ? null
          : map['lastAutoAdjustTime'] as String,
    );
  }
}
