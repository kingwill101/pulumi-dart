// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlarmCompositeExpressionExpressionList {
  final pulumi.Input<String>? comparisonOperator;
  /// The metric that is used to monitor the cloud service.
  final pulumi.Input<String>? metricName;
  /// The statistical period of the metric. Unit: seconds. Default value: `300`.
  final pulumi.Input<String>? period;
  /// Field `statistics` has been removed from provider version 1.216.0. New field `escalations_critical.statistics` instead.
  final pulumi.Input<String>? statistics;
  /// Field `threshold` has been removed from provider version 1.216.0. New field `escalations_critical.threshold` instead.
  final pulumi.Input<String>? threshold;

  /// Creates a new [AlarmCompositeExpressionExpressionList].
  /// [comparisonOperator] Optional.
  /// [metricName] The metric that is used to monitor the cloud service.
  /// [period] The statistical period of the metric. Unit: seconds. Default value: `300`.
  /// [statistics] Field `statistics` has been removed from provider version 1.216.0. New field `escalations_critical.statistics` instead.
  /// [threshold] Field `threshold` has been removed from provider version 1.216.0. New field `escalations_critical.threshold` instead.
  const AlarmCompositeExpressionExpressionList({
    this.comparisonOperator,
    this.metricName,
    this.period,
    this.statistics,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': ?comparisonOperator,
      'metricName': ?metricName,
      'period': ?period,
      'statistics': ?statistics,
      'threshold': ?threshold,
    };
  }

  factory AlarmCompositeExpressionExpressionList.fromMap(Map<String, dynamic> map) {
    return AlarmCompositeExpressionExpressionList(
      comparisonOperator: (() { final guardedValue = map['comparisonOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statistics: (() { final guardedValue = map['statistics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

