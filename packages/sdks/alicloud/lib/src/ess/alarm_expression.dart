// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlarmExpression {
  /// The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Supported value: >=, <=, >, <. Defaults to >=.
  final pulumi.Input<String>? comparisonOperator;
  /// The name for the alarm's associated metric. See `dimensions` below for details.
  final pulumi.Input<String>? metricName;
  /// The period in seconds over which the specified statistic is applied. Supported value: 60, 120, 300, 900. Defaults to 300.
  final pulumi.Input<int>? period;
  /// The statistic to apply to the alarm's associated metric. Supported value: Average, Minimum, Maximum. Defaults to Average.
  final pulumi.Input<String>? statistics;
  /// The value against which the specified statistics is compared.
  final pulumi.Input<double>? threshold;

  /// Creates a new [AlarmExpression].
  /// [comparisonOperator] The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Supported value: >=, <=, >, <. Defaults to >=.
  /// [metricName] The name for the alarm's associated metric. See `dimensions` below for details.
  /// [period] The period in seconds over which the specified statistic is applied. Supported value: 60, 120, 300, 900. Defaults to 300.
  /// [statistics] The statistic to apply to the alarm's associated metric. Supported value: Average, Minimum, Maximum. Defaults to Average.
  /// [threshold] The value against which the specified statistics is compared.
  AlarmExpression({
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

  factory AlarmExpression.fromMap(Map<String, dynamic> map) {
    return AlarmExpression(
      comparisonOperator: map['comparisonOperator'] == null ? null : (map['comparisonOperator']! as String).input(),
      metricName: map['metricName'] == null ? null : (map['metricName']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      statistics: map['statistics'] == null ? null : (map['statistics']! as String).input(),
      threshold: map['threshold'] == null ? null : (map['threshold']! as double).input(),
    );
  }
}

