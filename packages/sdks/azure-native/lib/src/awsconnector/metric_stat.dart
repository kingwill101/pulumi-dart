// ignore_for_file: unused_element, unnecessary_cast

import 'metric.dart';

/// Definition of MetricStat
class MetricStat {
  /// The metric to return, including the metric name, namespace, and dimensions. The ``Metric`` property type represents a specific metric. ``Metric`` is a property of the [MetricStat](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html) property type.
  final Metric? metric;
  /// The granularity, in seconds, of the returned data points. For metrics with regular resolution, a period can be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those metrics stored by a ``PutMetricData`` call that includes a ``StorageResolution`` of 1 second. If the ``StartTime`` parameter specifies a time stamp that is greater than 3 hours ago, you must specify the period as follows or no data points in that time range is returned:  +  Start time between 3 hours and 15 days ago - Use a multiple of 60 seconds (1 minute).  +  Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).  +  Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).
  final int? period;
  /// The statistic to return. It can include any CW statistic or extended statistic. For a list of valid values, see the table in [Statistics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic) in the *User Guide*.
  final String? stat;
  /// The unit to use for the returned data points.  Valid values are: Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, or None.
  final String? unit;

  /// Creates a new [MetricStat].
  /// [metric] The metric to return, including the metric name, namespace, and dimensions. The ``Metric`` property type represents a specific metric. ``Metric`` is a property of the [MetricStat](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html) property type.
  /// [period] The granularity, in seconds, of the returned data points. For metrics with regular resolution, a period can be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those metrics stored by a ``PutMetricData`` call that includes a ``StorageResolution`` of 1 second. If the ``StartTime`` parameter specifies a time stamp that is greater than 3 hours ago, you must specify the period as follows or no data points in that time range is returned:  +  Start time between 3 hours and 15 days ago - Use a multiple of 60 seconds (1 minute).  +  Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).  +  Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).
  /// [stat] The statistic to return. It can include any CW statistic or extended statistic. For a list of valid values, see the table in [Statistics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic) in the *User Guide*.
  /// [unit] The unit to use for the returned data points.  Valid values are: Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, or None.
  MetricStat({
    this.metric,
    this.period,
    this.stat,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': ?metric == null ? null : metric!.toMap(),
      'period': ?period,
      'stat': ?stat,
      'unit': ?unit,
    };
  }

  factory MetricStat.fromMap(Map<String, dynamic> map) {
    return MetricStat(
      metric: map['metric'] == null ? null : Metric.fromMap((map['metric'] as Map).cast<String, dynamic>()),
      period: map['period'] == null ? null : map['period'] as int,
      stat: map['stat'] == null ? null : map['stat'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}

