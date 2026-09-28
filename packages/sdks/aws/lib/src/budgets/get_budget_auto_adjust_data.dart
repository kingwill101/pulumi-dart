// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_auto_adjust_data_historical_option.dart';

class GetBudgetAutoAdjustData {
  /// String that defines whether the budget auto-adjusts based on historical or forecasted data. Valid values: `FORECAST`, `HISTORICAL`.
  final pulumi.Input<String> autoAdjustType;
  /// Historical data that the auto-adjusting budget is based on. See `historicalOptions` Block for details.
  final pulumi.Input<List<GetBudgetAutoAdjustDataHistoricalOption>> historicalOptions;
  /// Last time that the budget was auto-adjusted.
  final pulumi.Input<String> lastAutoAdjustTime;

  /// Creates a new [GetBudgetAutoAdjustData].
  /// [autoAdjustType] String that defines whether the budget auto-adjusts based on historical or forecasted data. Valid values: `FORECAST`, `HISTORICAL`.
  /// [historicalOptions] Historical data that the auto-adjusting budget is based on. See `historicalOptions` Block for details.
  /// [lastAutoAdjustTime] Last time that the budget was auto-adjusted.
  const GetBudgetAutoAdjustData({
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
      autoAdjustType: pulumi.Input.fromValue(map['autoAdjustType'] as String),
      historicalOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBudgetAutoAdjustDataHistoricalOption>(map['historicalOptions']!, (value) => GetBudgetAutoAdjustDataHistoricalOption.fromMap((value as Map).cast<String, dynamic>()))),
      lastAutoAdjustTime: pulumi.Input.fromValue(map['lastAutoAdjustTime'] as String),
    );
  }
}
