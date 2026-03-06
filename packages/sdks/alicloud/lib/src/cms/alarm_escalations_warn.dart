// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlarmEscalationsWarn {
  /// Warn level alarm comparison operator. Default value: `&gt;`. Valid values: `&gt;`, `&gt;=`, `&lt;`, `&lt;=`, `!=`, `==`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`. **NOTE:** From version 1.231.0, `comparison_operator` can be set to `==`.
  final pulumi.Input<String>? comparisonOperator;
  /// Warn level alarm statistics method. It must be consistent with that defined for metrics. For more information, see [How to use it](https://cms.console.aliyun.com/metric-meta/acs_ecs_dashboard/ecs).
  final pulumi.Input<String>? statistics;
  /// Warn level alarm threshold value, which must be a numeric value currently.
  final pulumi.Input<String>? threshold;
  /// Warn level alarm retry times. Default value: `3`.
  final pulumi.Input<int>? times;

  /// Creates a new [AlarmEscalationsWarn].
  /// [comparisonOperator] Warn level alarm comparison operator. Default value: `&gt;`. Valid values: `&gt;`, `&gt;=`, `&lt;`, `&lt;=`, `!=`, `==`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`. **NOTE:** From version 1.231.0, `comparison_operator` can be set to `==`.
  /// [statistics] Warn level alarm statistics method. It must be consistent with that defined for metrics. For more information, see [How to use it](https://cms.console.aliyun.com/metric-meta/acs_ecs_dashboard/ecs).
  /// [threshold] Warn level alarm threshold value, which must be a numeric value currently.
  /// [times] Warn level alarm retry times. Default value: `3`.
  const AlarmEscalationsWarn({
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

  factory AlarmEscalationsWarn.fromMap(Map<String, dynamic> map) {
    return AlarmEscalationsWarn(
      comparisonOperator: (() { final guardedValue = map['comparisonOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statistics: (() { final guardedValue = map['statistics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      times: (() { final guardedValue = map['times']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

