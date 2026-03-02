// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dimension.dart';
import 'metric_data_query.dart';
import 'tag.dart';

/// Definition of awsCloudWatchAlarm
class AwsCloudWatchAlarmProperties {
  /// Indicates whether actions should be executed during any changes to the alarm state. The default is TRUE.
  final pulumi.Input<bool>? actionsEnabled;
  /// The list of actions to execute when this alarm transitions into an ALARM state from any other state. Specify each action as an Amazon Resource Name (ARN). For more information about creating alarms and the actions that you can specify, see [PutMetricAlarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_PutMetricAlarm.html) in the *API Reference*.
  final pulumi.Input<List<String>>? alarmActions;
  /// The description of the alarm.
  final pulumi.Input<String>? alarmDescription;
  /// The name of the alarm. If you don't specify a name, CFN generates a unique physical ID and uses that ID for the alarm name.   If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
  final pulumi.Input<String>? alarmName;
  /// Property arn
  final pulumi.Input<String>? arn;
  /// The arithmetic operation to use when comparing the specified statistic and threshold. The specified statistic value is used as the first operand.
  final pulumi.Input<String>? comparisonOperator;
  /// The number of datapoints that must be breaching to trigger the alarm. This is used only if you are setting an 'M out of N' alarm. In that case, this value is the M, and the value that you set for ``EvaluationPeriods`` is the N value. For more information, see [Evaluating an Alarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation) in the *User Guide*. If you omit this parameter, CW uses the same value here that you set for ``EvaluationPeriods``, and the alarm goes to alarm state if that many consecutive periods are breaching.
  final pulumi.Input<int>? datapointsToAlarm;
  /// The dimensions for the metric associated with the alarm. For an alarm based on a math expression, you can't specify ``Dimensions``. Instead, you use ``Metrics``.
  final pulumi.Input<List<Dimension>>? dimensions;
  /// Used only for alarms based on percentiles. If ``ignore``, the alarm state does not change during periods with too few data points to be statistically significant. If ``evaluate`` or this parameter is not used, the alarm is always evaluated and possibly changes state no matter how many data points are available.
  final pulumi.Input<String>? evaluateLowSampleCountPercentile;
  /// The number of periods over which data is compared to the specified threshold. If you are setting an alarm that requires that a number of consecutive data points be breaching to trigger the alarm, this value specifies that number. If you are setting an 'M out of N' alarm, this value is the N, and ``DatapointsToAlarm`` is the M. For more information, see [Evaluating an Alarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation) in the *User Guide*.
  final pulumi.Input<int>? evaluationPeriods;
  /// The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100. For an alarm based on a metric, you must specify either ``Statistic`` or ``ExtendedStatistic`` but not both. For an alarm based on a math expression, you can't specify ``ExtendedStatistic``. Instead, you use ``Metrics``.
  final pulumi.Input<String>? extendedStatistic;
  /// The actions to execute when this alarm transitions to the ``INSUFFICIENT_DATA`` state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  final pulumi.Input<List<String>>? insufficientDataActions;
  /// The name of the metric associated with the alarm. This is required for an alarm based on a metric. For an alarm based on a math expression, you use ``Metrics`` instead and you can't specify ``MetricName``.
  final pulumi.Input<String>? metricName;
  /// An array that enables you to create an alarm based on the result of a metric math expression. Each item in the array either retrieves a metric or performs a math expression. If you specify the ``Metrics`` parameter, you cannot specify ``MetricName``, ``Dimensions``, ``Period``, ``Namespace``, ``Statistic``, ``ExtendedStatistic``, or ``Unit``.
  final pulumi.Input<List<MetricDataQuery>>? metrics;
  /// The namespace of the metric associated with the alarm. This is required for an alarm based on a metric. For an alarm based on a math expression, you can't specify ``Namespace`` and you use ``Metrics`` instead. For a list of namespaces for metrics from AWS services, see [Services That Publish Metrics.](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html)
  final pulumi.Input<String>? namespace;
  /// The actions to execute when this alarm transitions to the ``OK`` state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  final pulumi.Input<List<String>>? okActions;
  /// The period, in seconds, over which the statistic is applied. This is required for an alarm based on a metric. Valid values are 10, 30, 60, and any multiple of 60. For an alarm based on a math expression, you can't specify ``Period``, and instead you use the ``Metrics`` parameter. *Minimum:* 10
  final pulumi.Input<int>? period;
  /// The statistic for the metric associated with the alarm, other than percentile. For percentile statistics, use ``ExtendedStatistic``. For an alarm based on a metric, you must specify either ``Statistic`` or ``ExtendedStatistic`` but not both. For an alarm based on a math expression, you can't specify ``Statistic``. Instead, you use ``Metrics``.
  final pulumi.Input<String>? statistic;
  /// Property tags
  final pulumi.Input<List<Tag>>? tags;
  /// The value to compare with the specified statistic.
  final pulumi.Input<double>? threshold;
  /// In an alarm based on an anomaly detection model, this is the ID of the ``ANOMALY_DETECTION_BAND`` function used as the threshold for the alarm.
  final pulumi.Input<String>? thresholdMetricId;
  /// Sets how this alarm is to handle missing data points. Valid values are ``breaching``, ``notBreaching``, ``ignore``, and ``missing``. For more information, see [Configuring How Alarms Treat Missing Data](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data) in the *Amazon User Guide*. If you omit this parameter, the default behavior of ``missing`` is used.
  final pulumi.Input<String>? treatMissingData;
  /// The unit of the metric associated with the alarm. Specify this only if you are creating an alarm based on a single metric. Do not specify this if you are specifying a ``Metrics`` array.  You can specify the following values: Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, or None.
  final pulumi.Input<String>? unit;

  /// Creates a new [AwsCloudWatchAlarmProperties].
  /// [actionsEnabled] Indicates whether actions should be executed during any changes to the alarm state. The default is TRUE.
  /// [alarmActions] The list of actions to execute when this alarm transitions into an ALARM state from any other state. Specify each action as an Amazon Resource Name (ARN). For more information about creating alarms and the actions that you can specify, see [PutMetricAlarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_PutMetricAlarm.html) in the *API Reference*.
  /// [alarmDescription] The description of the alarm.
  /// [alarmName] The name of the alarm. If you don't specify a name, CFN generates a unique physical ID and uses that ID for the alarm name.   If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
  /// [arn] Property arn
  /// [comparisonOperator] The arithmetic operation to use when comparing the specified statistic and threshold. The specified statistic value is used as the first operand.
  /// [datapointsToAlarm] The number of datapoints that must be breaching to trigger the alarm. This is used only if you are setting an 'M out of N' alarm. In that case, this value is the M, and the value that you set for ``EvaluationPeriods`` is the N value. For more information, see [Evaluating an Alarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation) in the *User Guide*. If you omit this parameter, CW uses the same value here that you set for ``EvaluationPeriods``, and the alarm goes to alarm state if that many consecutive periods are breaching.
  /// [dimensions] The dimensions for the metric associated with the alarm. For an alarm based on a math expression, you can't specify ``Dimensions``. Instead, you use ``Metrics``.
  /// [evaluateLowSampleCountPercentile] Used only for alarms based on percentiles. If ``ignore``, the alarm state does not change during periods with too few data points to be statistically significant. If ``evaluate`` or this parameter is not used, the alarm is always evaluated and possibly changes state no matter how many data points are available.
  /// [evaluationPeriods] The number of periods over which data is compared to the specified threshold. If you are setting an alarm that requires that a number of consecutive data points be breaching to trigger the alarm, this value specifies that number. If you are setting an 'M out of N' alarm, this value is the N, and ``DatapointsToAlarm`` is the M. For more information, see [Evaluating an Alarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation) in the *User Guide*.
  /// [extendedStatistic] The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100. For an alarm based on a metric, you must specify either ``Statistic`` or ``ExtendedStatistic`` but not both. For an alarm based on a math expression, you can't specify ``ExtendedStatistic``. Instead, you use ``Metrics``.
  /// [insufficientDataActions] The actions to execute when this alarm transitions to the ``INSUFFICIENT_DATA`` state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  /// [metricName] The name of the metric associated with the alarm. This is required for an alarm based on a metric. For an alarm based on a math expression, you use ``Metrics`` instead and you can't specify ``MetricName``.
  /// [metrics] An array that enables you to create an alarm based on the result of a metric math expression. Each item in the array either retrieves a metric or performs a math expression. If you specify the ``Metrics`` parameter, you cannot specify ``MetricName``, ``Dimensions``, ``Period``, ``Namespace``, ``Statistic``, ``ExtendedStatistic``, or ``Unit``.
  /// [namespace] The namespace of the metric associated with the alarm. This is required for an alarm based on a metric. For an alarm based on a math expression, you can't specify ``Namespace`` and you use ``Metrics`` instead. For a list of namespaces for metrics from AWS services, see [Services That Publish Metrics.](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html)
  /// [okActions] The actions to execute when this alarm transitions to the ``OK`` state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  /// [period] The period, in seconds, over which the statistic is applied. This is required for an alarm based on a metric. Valid values are 10, 30, 60, and any multiple of 60. For an alarm based on a math expression, you can't specify ``Period``, and instead you use the ``Metrics`` parameter. *Minimum:* 10
  /// [statistic] The statistic for the metric associated with the alarm, other than percentile. For percentile statistics, use ``ExtendedStatistic``. For an alarm based on a metric, you must specify either ``Statistic`` or ``ExtendedStatistic`` but not both. For an alarm based on a math expression, you can't specify ``Statistic``. Instead, you use ``Metrics``.
  /// [tags] Property tags
  /// [threshold] The value to compare with the specified statistic.
  /// [thresholdMetricId] In an alarm based on an anomaly detection model, this is the ID of the ``ANOMALY_DETECTION_BAND`` function used as the threshold for the alarm.
  /// [treatMissingData] Sets how this alarm is to handle missing data points. Valid values are ``breaching``, ``notBreaching``, ``ignore``, and ``missing``. For more information, see [Configuring How Alarms Treat Missing Data](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data) in the *Amazon User Guide*. If you omit this parameter, the default behavior of ``missing`` is used.
  /// [unit] The unit of the metric associated with the alarm. Specify this only if you are creating an alarm based on a single metric. Do not specify this if you are specifying a ``Metrics`` array.  You can specify the following values: Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, or None.
  AwsCloudWatchAlarmProperties({
    this.actionsEnabled,
    this.alarmActions,
    this.alarmDescription,
    this.alarmName,
    this.arn,
    this.comparisonOperator,
    this.datapointsToAlarm,
    this.dimensions,
    this.evaluateLowSampleCountPercentile,
    this.evaluationPeriods,
    this.extendedStatistic,
    this.insufficientDataActions,
    this.metricName,
    this.metrics,
    this.namespace,
    this.okActions,
    this.period,
    this.statistic,
    this.tags,
    this.threshold,
    this.thresholdMetricId,
    this.treatMissingData,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsEnabled': ?actionsEnabled,
      'alarmActions': ?alarmActions,
      'alarmDescription': ?alarmDescription,
      'alarmName': ?alarmName,
      'arn': ?arn,
      'comparisonOperator': ?comparisonOperator,
      'datapointsToAlarm': ?datapointsToAlarm,
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<Dimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<Dimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evaluateLowSampleCountPercentile': ?evaluateLowSampleCountPercentile,
      'evaluationPeriods': ?evaluationPeriods,
      'extendedStatistic': ?extendedStatistic,
      'insufficientDataActions': ?insufficientDataActions,
      'metricName': ?metricName,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<MetricDataQuery>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<MetricDataQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namespace': ?namespace,
      'okActions': ?okActions,
      'period': ?period,
      'statistic': ?statistic,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'threshold': ?threshold,
      'thresholdMetricId': ?thresholdMetricId,
      'treatMissingData': ?treatMissingData,
      'unit': ?unit,
    };
  }

  factory AwsCloudWatchAlarmProperties.fromMap(Map<String, dynamic> map) {
    return AwsCloudWatchAlarmProperties(
      actionsEnabled: map['actionsEnabled'] == null ? null : (map['actionsEnabled'] as bool).input(),
      alarmActions: map['alarmActions'] == null ? null : ((map['alarmActions'] as List).cast<String>()).input(),
      alarmDescription: map['alarmDescription'] == null ? null : (map['alarmDescription'] as String).input(),
      alarmName: map['alarmName'] == null ? null : (map['alarmName'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      comparisonOperator: map['comparisonOperator'] == null ? null : (map['comparisonOperator'] as String).input(),
      datapointsToAlarm: map['datapointsToAlarm'] == null ? null : (map['datapointsToAlarm'] as int).input(),
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<Dimension>(map['dimensions'], (value) => Dimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      evaluateLowSampleCountPercentile: map['evaluateLowSampleCountPercentile'] == null ? null : (map['evaluateLowSampleCountPercentile'] as String).input(),
      evaluationPeriods: map['evaluationPeriods'] == null ? null : (map['evaluationPeriods'] as int).input(),
      extendedStatistic: map['extendedStatistic'] == null ? null : (map['extendedStatistic'] as String).input(),
      insufficientDataActions: map['insufficientDataActions'] == null ? null : ((map['insufficientDataActions'] as List).cast<String>()).input(),
      metricName: map['metricName'] == null ? null : (map['metricName'] as String).input(),
      metrics: map['metrics'] == null ? null : (pulumi.Input.decodeList<MetricDataQuery>(map['metrics'], (value) => MetricDataQuery.fromMap((value as Map).cast<String, dynamic>()))).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      okActions: map['okActions'] == null ? null : ((map['okActions'] as List).cast<String>()).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      statistic: map['statistic'] == null ? null : (map['statistic'] as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      threshold: map['threshold'] == null ? null : (map['threshold'] as double).input(),
      thresholdMetricId: map['thresholdMetricId'] == null ? null : (map['thresholdMetricId'] as String).input(),
      treatMissingData: map['treatMissingData'] == null ? null : (map['treatMissingData'] as String).input(),
      unit: map['unit'] == null ? null : (map['unit'] as String).input(),
    );
  }
}

