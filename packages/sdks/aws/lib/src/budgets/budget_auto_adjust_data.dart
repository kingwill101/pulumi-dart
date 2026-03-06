// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_auto_adjust_data_historical_options.dart';

class BudgetAutoAdjustData {
  /// (Required) - The string that defines whether your budget auto-adjusts based on historical or forecasted data. Valid values: `FORECAST`,`HISTORICAL`
  final pulumi.Input<String> autoAdjustType;
  /// (Optional) - Configuration block of Historical Options. Required for `auto_adjust_type` of `HISTORICAL` Configuration block that defines the historical data that your auto-adjusting budget is based on.
  final pulumi.Input<BudgetAutoAdjustDataHistoricalOptions>? historicalOptions;
  /// (Optional) - The last time that your budget was auto-adjusted.
  final pulumi.Input<String>? lastAutoAdjustTime;

  /// Creates a new [BudgetAutoAdjustData].
  /// [autoAdjustType] (Required) - The string that defines whether your budget auto-adjusts based on historical or forecasted data. Valid values: `FORECAST`,`HISTORICAL`
  /// [historicalOptions] (Optional) - Configuration block of Historical Options. Required for `auto_adjust_type` of `HISTORICAL` Configuration block that defines the historical data that your auto-adjusting budget is based on.
  /// [lastAutoAdjustTime] (Optional) - The last time that your budget was auto-adjusted.
  const BudgetAutoAdjustData({
    required this.autoAdjustType,
    this.historicalOptions,
    this.lastAutoAdjustTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAdjustType': autoAdjustType,
      'historicalOptions': ?pulumi.Input.mapOptionalInputValue<BudgetAutoAdjustDataHistoricalOptions, Map<String, dynamic>>(historicalOptions, (value) => value.toMap()),
      'lastAutoAdjustTime': ?lastAutoAdjustTime,
    };
  }

  factory BudgetAutoAdjustData.fromMap(Map<String, dynamic> map) {
    return BudgetAutoAdjustData(
      autoAdjustType: pulumi.Input.fromValue(map['autoAdjustType'] as String),
      historicalOptions: (() { final guardedValue = map['historicalOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetAutoAdjustDataHistoricalOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastAutoAdjustTime: (() { final guardedValue = map['lastAutoAdjustTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

