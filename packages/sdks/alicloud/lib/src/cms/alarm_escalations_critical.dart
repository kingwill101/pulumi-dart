// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlarmEscalationsCritical {
  /// Critical level alarm comparison operator. Default value: `&gt;`. Valid values: `&gt;`, `&gt;=`, `&lt;`, `&lt;=`, `!=`, `==`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`. **NOTE:** From version 1.231.0, `comparison_operator` can be set to `==`.
  final pulumi.Input<String>? comparisonOperator;

  /// Critical level alarm statistics method. It must be consistent with that defined for metrics. For more information, see [How to use it](https://cms.console.aliyun.com/metric-meta/acs_ecs_dashboard/ecs).
  final pulumi.Input<String>? statistics;

  /// Critical level alarm threshold value, which must be a numeric value currently.
  final pulumi.Input<String>? threshold;

  /// Critical level alarm retry times. Default value: `3`.
  final pulumi.Input<int>? times;

  /// Creates a new [AlarmEscalationsCritical].
  /// [comparisonOperator] Critical level alarm comparison operator. Default value: `&gt;`. Valid values: `&gt;`, `&gt;=`, `&lt;`, `&lt;=`, `!=`, `==`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`. **NOTE:** From version 1.231.0, `comparison_operator` can be set to `==`.
  /// [statistics] Critical level alarm statistics method. It must be consistent with that defined for metrics. For more information, see [How to use it](https://cms.console.aliyun.com/metric-meta/acs_ecs_dashboard/ecs).
  /// [threshold] Critical level alarm threshold value, which must be a numeric value currently.
  /// [times] Critical level alarm retry times. Default value: `3`.
  AlarmEscalationsCritical({
    this.comparisonOperator,
    this.statistics,
    this.threshold,
    this.times,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': ?comparisonOperator,
      'statistics': ?statistics,
      'threshold': ?threshold,
      'times': ?times,
    };
  }

  factory AlarmEscalationsCritical.fromMap(Map<String, dynamic> map) {
    return AlarmEscalationsCritical(
      comparisonOperator: (() {
        final guardedValue = map['comparisonOperator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statistics: (() {
        final guardedValue = map['statistics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      threshold: (() {
        final guardedValue = map['threshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      times: (() {
        final guardedValue = map['times'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
