// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_auto_adjust_data_historical_option.dart';

class GetBudgetAutoAdjustData {
  /// (Required) - The string that defines whether your budget auto-adjusts based on historical or forecasted data. Valid values: `FORECAST`,`HISTORICAL`.
  final pulumi.Input<String> autoAdjustType;
  /// (Optional) - Configuration block of Historical Options. Required for `auto_adjust_type` of `HISTORICAL` Configuration block that defines the historical data that your auto-adjusting budget is based on.
  final pulumi.Input<List<GetBudgetAutoAdjustDataHistoricalOption>> historicalOptions;
  /// (Optional) - The last time that your budget was auto-adjusted.
  final pulumi.Input<String> lastAutoAdjustTime;

  /// Creates a new [GetBudgetAutoAdjustData].
  /// [autoAdjustType] (Required) - The string that defines whether your budget auto-adjusts based on historical or forecasted data. Valid values: `FORECAST`,`HISTORICAL`.
  /// [historicalOptions] (Optional) - Configuration block of Historical Options. Required for `auto_adjust_type` of `HISTORICAL` Configuration block that defines the historical data that your auto-adjusting budget is based on.
  /// [lastAutoAdjustTime] (Optional) - The last time that your budget was auto-adjusted.
  GetBudgetAutoAdjustData({
    required this.autoAdjustType,
    required this.historicalOptions,
    required this.lastAutoAdjustTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAdjustType': autoAdjustType,
      'historicalOptions': pulumi.Input.mapInputValue<List<GetBudgetAutoAdjustDataHistoricalOption>, List<Map<String, dynamic>>>(historicalOptions, (value) => pulumi.Input.encodeList<GetBudgetAutoAdjustDataHistoricalOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastAutoAdjustTime': lastAutoAdjustTime,
    };
  }

  factory GetBudgetAutoAdjustData.fromMap(Map<String, dynamic> map) {
    return GetBudgetAutoAdjustData(
      autoAdjustType: (map['autoAdjustType'] as String).input(),
      historicalOptions: (pulumi.Input.decodeList<GetBudgetAutoAdjustDataHistoricalOption>(map['historicalOptions'], (value) => GetBudgetAutoAdjustDataHistoricalOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastAutoAdjustTime: (map['lastAutoAdjustTime'] as String).input(),
    );
  }
}

