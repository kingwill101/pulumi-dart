// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricAlarmWarmUpConfiguration {
  /// Whether to wait for the full warm-up period before evaluation begins, even if metric data arrives earlier. When `false`, the warm-up period ends early as soon as the alarm has enough data to fill its evaluation window. Defaults to `false`.
  ///
  /// &gt; **Note:** The warm-up period applies once, when the alarm is created. Changing the warm-up configuration after the warm-up period ends does not start a new warm-up period. See [Alarm warm-up periods](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/alarm-warm-up.html) in the Amazon CloudWatch User Guide.
  final pulumi.Input<bool?>? onlyStartEvaluatingAfterWarmUpPeriodEnds;
  /// Length of the warm-up period, in minutes. Valid values are `1` to `2880`.
  final pulumi.Input<int> warmUpPeriodDurationInMinutes;

  /// Creates a new [MetricAlarmWarmUpConfiguration].
  /// [onlyStartEvaluatingAfterWarmUpPeriodEnds] Whether to wait for the full warm-up period before evaluation begins, even if metric data arrives earlier. When `false`, the warm-up period ends early as soon as the alarm has enough data to fill its evaluation window. Defaults to `false`.
  /// [warmUpPeriodDurationInMinutes] Length of the warm-up period, in minutes. Valid values are `1` to `2880`.
  const MetricAlarmWarmUpConfiguration({
    this.onlyStartEvaluatingAfterWarmUpPeriodEnds,
    required this.warmUpPeriodDurationInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onlyStartEvaluatingAfterWarmUpPeriodEnds': ?onlyStartEvaluatingAfterWarmUpPeriodEnds,
      'warmUpPeriodDurationInMinutes': warmUpPeriodDurationInMinutes,
    };
  }

  factory MetricAlarmWarmUpConfiguration.fromMap(Map<String, dynamic> map) {
    return MetricAlarmWarmUpConfiguration(
      onlyStartEvaluatingAfterWarmUpPeriodEnds: (() { final guardedValue = map['onlyStartEvaluatingAfterWarmUpPeriodEnds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      warmUpPeriodDurationInMinutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['warmUpPeriodDurationInMinutes'])),
    );
  }
}
