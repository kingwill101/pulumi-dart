// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_alarm_metric_query.dart';

/// Input properties used for looking up and filtering MetricAlarm resources.
class MetricAlarmState {
  /// Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to `true`.
  final pulumi.Input<bool>? actionsEnabled;
  /// The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  final pulumi.Input<List<String>>? alarmActions;
  /// The description for the alarm.
  final pulumi.Input<String>? alarmDescription;
  /// The ARN of the CloudWatch Metric Alarm.
  final pulumi.Input<String>? arn;
  /// The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanThreshold`, `LessThanOrEqualToThreshold`. Additionally, the values  `LessThanLowerOrGreaterThanUpperThreshold`, `LessThanLowerThreshold`, and `GreaterThanUpperThreshold` are used only for alarms based on anomaly detection models.
  final pulumi.Input<String>? comparisonOperator;
  /// The number of data points that must be breaching to trigger the alarm.
  final pulumi.Input<int>? datapointsToAlarm;
  /// The dimensions for the alarm's associated metric.  For the list of available dimensions see the AWS documentation [here](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  final pulumi.Input<Map<String, String>>? dimensions;
  /// Used only for alarms based on percentiles.
  /// If you specify `ignore`, the alarm state will not change during periods with too few data points to be statistically significant.
  /// If you specify `evaluate` or omit this parameter, the alarm will always be evaluated and possibly change state no matter how many data points are available.
  /// The following values are supported: `ignore`, and `evaluate`.
  final pulumi.Input<String>? evaluateLowSampleCountPercentiles;
  /// The number of periods over which data is compared to the specified threshold.
  final pulumi.Input<int>? evaluationPeriods;
  /// The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100.
  final pulumi.Input<String>? extendedStatistic;
  /// The list of actions to execute when this alarm transitions into an INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  final pulumi.Input<List<String>>? insufficientDataActions;
  /// The name for the alarm's associated metric.
  /// See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  final pulumi.Input<String>? metricName;
  /// Enables you to create an alarm based on a metric math expression. You may specify at most 20.
  final pulumi.Input<List<MetricAlarmMetricQuery>>? metricQueries;
  /// The descriptive name for the alarm. This name must be unique within the user's AWS account
  final pulumi.Input<String>? name;
  /// The namespace for the alarm's associated metric. See docs for the [list of namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/aws-namespaces.html).
  /// See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  final pulumi.Input<String>? namespace;
  /// The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  final pulumi.Input<List<String>>? okActions;
  /// The period in seconds over which the specified `statistic` is applied.
  /// Valid values are `10`, `20`, `30`, or any multiple of `60`.
  final pulumi.Input<int>? period;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The statistic to apply to the alarm's associated metric.
  /// Either of the following is supported: `SampleCount`, `Average`, `Sum`, `Minimum`, `Maximum`
  final pulumi.Input<String>? statistic;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// See [related part of AWS Docs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_PutMetricAlarm.html)
  /// for details about valid values.
  ///
  /// > **NOTE:**  If you specify at least one `metric_query`, you may not specify a `metric_name`, `namespace`, `period` or `statistic`. If you do not specify a `metric_query`, you must specify each of these (although you may use `extended_statistic` instead of `statistic`).
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models.
  final pulumi.Input<double>? threshold;
  /// If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY_DETECTION_BAND function.
  final pulumi.Input<String>? thresholdMetricId;
  /// Sets how this alarm is to handle missing data points. The following values are supported: `missing`, `ignore`, `breaching` and `notBreaching`. Defaults to `missing`.
  final pulumi.Input<String>? treatMissingData;
  /// The unit for the alarm's associated metric.
  final pulumi.Input<String>? unit;

  /// Creates a new [MetricAlarmState].
  /// [actionsEnabled] Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to `true`.
  /// [alarmActions] The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  /// [alarmDescription] The description for the alarm.
  /// [arn] The ARN of the CloudWatch Metric Alarm.
  /// [comparisonOperator] The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanThreshold`, `LessThanOrEqualToThreshold`. Additionally, the values  `LessThanLowerOrGreaterThanUpperThreshold`, `LessThanLowerThreshold`, and `GreaterThanUpperThreshold` are used only for alarms based on anomaly detection models.
  /// [datapointsToAlarm] The number of data points that must be breaching to trigger the alarm.
  /// [dimensions] The dimensions for the alarm's associated metric.  For the list of available dimensions see the AWS documentation [here](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  /// [evaluateLowSampleCountPercentiles] Used only for alarms based on percentiles.
  /// [evaluationPeriods] The number of periods over which data is compared to the specified threshold.
  /// [extendedStatistic] The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100.
  /// [insufficientDataActions] The list of actions to execute when this alarm transitions into an INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  /// [metricName] The name for the alarm's associated metric.
  /// [metricQueries] Enables you to create an alarm based on a metric math expression. You may specify at most 20.
  /// [name] The descriptive name for the alarm. This name must be unique within the user's AWS account
  /// [namespace] The namespace for the alarm's associated metric. See docs for the [list of namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/aws-namespaces.html).
  /// [okActions] The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  /// [period] The period in seconds over which the specified `statistic` is applied.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statistic] The statistic to apply to the alarm's associated metric.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [threshold] The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models.
  /// [thresholdMetricId] If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY_DETECTION_BAND function.
  /// [treatMissingData] Sets how this alarm is to handle missing data points. The following values are supported: `missing`, `ignore`, `breaching` and `notBreaching`. Defaults to `missing`.
  /// [unit] The unit for the alarm's associated metric.
  MetricAlarmState({
    this.actionsEnabled,
    this.alarmActions,
    this.alarmDescription,
    this.arn,
    this.comparisonOperator,
    this.datapointsToAlarm,
    this.dimensions,
    this.evaluateLowSampleCountPercentiles,
    this.evaluationPeriods,
    this.extendedStatistic,
    this.insufficientDataActions,
    this.metricName,
    this.metricQueries,
    this.name,
    this.namespace,
    this.okActions,
    this.period,
    this.region,
    this.statistic,
    this.tags,
    this.tagsAll,
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
      'arn': ?arn,
      'comparisonOperator': ?comparisonOperator,
      'datapointsToAlarm': ?datapointsToAlarm,
      'dimensions': ?dimensions,
      'evaluateLowSampleCountPercentiles': ?evaluateLowSampleCountPercentiles,
      'evaluationPeriods': ?evaluationPeriods,
      'extendedStatistic': ?extendedStatistic,
      'insufficientDataActions': ?insufficientDataActions,
      'metricName': ?metricName,
      'metricQueries': ?pulumi.Input.mapOptionalInputValue<List<MetricAlarmMetricQuery>, List<Map<String, dynamic>>>(metricQueries, (value) => pulumi.Input.encodeList<MetricAlarmMetricQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'namespace': ?namespace,
      'okActions': ?okActions,
      'period': ?period,
      'region': ?region,
      'statistic': ?statistic,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'threshold': ?threshold,
      'thresholdMetricId': ?thresholdMetricId,
      'treatMissingData': ?treatMissingData,
      'unit': ?unit,
    };
  }

  factory MetricAlarmState.fromMap(Map<String, dynamic> map) {
    return MetricAlarmState(
      actionsEnabled: map['actionsEnabled'] == null ? null : (map['actionsEnabled'] as bool).input(),
      alarmActions: map['alarmActions'] == null ? null : ((map['alarmActions'] as List).cast<String>()).input(),
      alarmDescription: map['alarmDescription'] == null ? null : (map['alarmDescription'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      comparisonOperator: map['comparisonOperator'] == null ? null : (map['comparisonOperator'] as String).input(),
      datapointsToAlarm: map['datapointsToAlarm'] == null ? null : (map['datapointsToAlarm'] as int).input(),
      dimensions: map['dimensions'] == null ? null : ((map['dimensions'] as Map).cast<String, String>()).input(),
      evaluateLowSampleCountPercentiles: map['evaluateLowSampleCountPercentiles'] == null ? null : (map['evaluateLowSampleCountPercentiles'] as String).input(),
      evaluationPeriods: map['evaluationPeriods'] == null ? null : (map['evaluationPeriods'] as int).input(),
      extendedStatistic: map['extendedStatistic'] == null ? null : (map['extendedStatistic'] as String).input(),
      insufficientDataActions: map['insufficientDataActions'] == null ? null : ((map['insufficientDataActions'] as List).cast<String>()).input(),
      metricName: map['metricName'] == null ? null : (map['metricName'] as String).input(),
      metricQueries: map['metricQueries'] == null ? null : (pulumi.Input.decodeList<MetricAlarmMetricQuery>(map['metricQueries'], (value) => MetricAlarmMetricQuery.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      okActions: map['okActions'] == null ? null : ((map['okActions'] as List).cast<String>()).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      statistic: map['statistic'] == null ? null : (map['statistic'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      threshold: map['threshold'] == null ? null : (map['threshold'] as double).input(),
      thresholdMetricId: map['thresholdMetricId'] == null ? null : (map['thresholdMetricId'] as String).input(),
      treatMissingData: map['treatMissingData'] == null ? null : (map['treatMissingData'] as String).input(),
      unit: map['unit'] == null ? null : (map['unit'] as String).input(),
    );
  }
}

