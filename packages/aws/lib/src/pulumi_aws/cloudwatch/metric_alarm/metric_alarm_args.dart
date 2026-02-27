// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../metric_alarm_metric_query/metric_alarm_metric_query.dart';

/// The set of arguments for MetricAlarm.
class MetricAlarmArgs {
  /// Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to `true`.
  final Input<bool>? actionsEnabled;

  /// The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  final Input<List<String>>? alarmActions;

  /// The description for the alarm.
  final Input<String>? alarmDescription;

  /// The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanThreshold`, `LessThanOrEqualToThreshold`. Additionally, the values  `LessThanLowerOrGreaterThanUpperThreshold`, `LessThanLowerThreshold`, and `GreaterThanUpperThreshold` are used only for alarms based on anomaly detection models.
  final Input<String> comparisonOperator;

  /// The number of data points that must be breaching to trigger the alarm.
  final Input<int>? datapointsToAlarm;

  /// The dimensions for the alarm's associated metric.  For the list of available dimensions see the AWS documentation [here](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  final Input<Map<String, String>>? dimensions;

  /// Used only for alarms based on percentiles.
  /// If you specify `ignore`, the alarm state will not change during periods with too few data points to be statistically significant.
  /// If you specify `evaluate` or omit this parameter, the alarm will always be evaluated and possibly change state no matter how many data points are available.
  /// The following values are supported: `ignore`, and `evaluate`.
  final Input<String>? evaluateLowSampleCountPercentiles;

  /// The number of periods over which data is compared to the specified threshold.
  final Input<int> evaluationPeriods;

  /// The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100.
  final Input<String>? extendedStatistic;

  /// The list of actions to execute when this alarm transitions into an INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  final Input<List<String>>? insufficientDataActions;

  /// The name for the alarm's associated metric.
  /// See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  final Input<String>? metricName;

  /// Enables you to create an alarm based on a metric math expression. You may specify at most 20.
  final Input<List<MetricAlarmMetricQuery>>? metricQueries;

  /// The descriptive name for the alarm. This name must be unique within the user's AWS account
  final Input<String>? name;

  /// The namespace for the alarm's associated metric. See docs for the [list of namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/aws-namespaces.html).
  /// See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  final Input<String>? namespace;

  /// The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  final Input<List<String>>? okActions;

  /// The period in seconds over which the specified `statistic` is applied.
  /// Valid values are `10`, `20`, `30`, or any multiple of `60`.
  final Input<int>? period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The statistic to apply to the alarm's associated metric.
  /// Either of the following is supported: `SampleCount`, `Average`, `Sum`, `Minimum`, `Maximum`
  final Input<String>? statistic;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// See [related part of AWS Docs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_PutMetricAlarm.html)
  /// for details about valid values.
  ///
  /// > **NOTE:**  If you specify at least one `metric_query`, you may not specify a `metric_name`, `namespace`, `period` or `statistic`. If you do not specify a `metric_query`, you must specify each of these (although you may use `extended_statistic` instead of `statistic`).
  final Input<Map<String, String>>? tags;

  /// The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models.
  final Input<double>? threshold;

  /// If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY_DETECTION_BAND function.
  final Input<String>? thresholdMetricId;

  /// Sets how this alarm is to handle missing data points. The following values are supported: `missing`, `ignore`, `breaching` and `notBreaching`. Defaults to `missing`.
  final Input<String>? treatMissingData;

  /// The unit for the alarm's associated metric.
  final Input<String>? unit;

  MetricAlarmArgs({
    this.actionsEnabled,
    this.alarmActions,
    this.alarmDescription,
    required this.comparisonOperator,
    this.datapointsToAlarm,
    this.dimensions,
    this.evaluateLowSampleCountPercentiles,
    required this.evaluationPeriods,
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
    this.threshold,
    this.thresholdMetricId,
    this.treatMissingData,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsEnabledValue = actionsEnabled;
    if (actionsEnabledValue != null) {
      map['actionsEnabled'] = actionsEnabledValue;
    }
    final alarmActionsValue = alarmActions;
    if (alarmActionsValue != null) {
      map['alarmActions'] = alarmActionsValue;
    }
    final alarmDescriptionValue = alarmDescription;
    if (alarmDescriptionValue != null) {
      map['alarmDescription'] = alarmDescriptionValue;
    }
    map['comparisonOperator'] = comparisonOperator;
    final datapointsToAlarmValue = datapointsToAlarm;
    if (datapointsToAlarmValue != null) {
      map['datapointsToAlarm'] = datapointsToAlarmValue;
    }
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = dimensionsValue;
    }
    final evaluateLowSampleCountPercentilesValue =
        evaluateLowSampleCountPercentiles;
    if (evaluateLowSampleCountPercentilesValue != null) {
      map['evaluateLowSampleCountPercentiles'] =
          evaluateLowSampleCountPercentilesValue;
    }
    map['evaluationPeriods'] = evaluationPeriods;
    final extendedStatisticValue = extendedStatistic;
    if (extendedStatisticValue != null) {
      map['extendedStatistic'] = extendedStatisticValue;
    }
    final insufficientDataActionsValue = insufficientDataActions;
    if (insufficientDataActionsValue != null) {
      map['insufficientDataActions'] = insufficientDataActionsValue;
    }
    final metricNameValue = metricName;
    if (metricNameValue != null) {
      map['metricName'] = metricNameValue;
    }
    final metricQueriesValue = metricQueries;
    if (metricQueriesValue != null) {
      map['metricQueries'] = Input.mapOptionalInputValue<
              List<MetricAlarmMetricQuery>, List<Map<String, dynamic>>>(
          metricQueriesValue,
          (value) =>
              Input.encodeList<MetricAlarmMetricQuery, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final okActionsValue = okActions;
    if (okActionsValue != null) {
      map['okActions'] = okActionsValue;
    }
    final periodValue = period;
    if (periodValue != null) {
      map['period'] = periodValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statisticValue = statistic;
    if (statisticValue != null) {
      map['statistic'] = statisticValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final thresholdValue = threshold;
    if (thresholdValue != null) {
      map['threshold'] = thresholdValue;
    }
    final thresholdMetricIdValue = thresholdMetricId;
    if (thresholdMetricIdValue != null) {
      map['thresholdMetricId'] = thresholdMetricIdValue;
    }
    final treatMissingDataValue = treatMissingData;
    if (treatMissingDataValue != null) {
      map['treatMissingData'] = treatMissingDataValue;
    }
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue;
    }
    return map;
  }

  factory MetricAlarmArgs.fromMap(Map<String, dynamic> map) {
    return MetricAlarmArgs(
      actionsEnabled: Input.asOptionalInput<bool>(map['actionsEnabled']),
      alarmActions: Input.asOptionalInput<List<String>>(map['alarmActions']),
      alarmDescription: Input.asOptionalInput<String>(map['alarmDescription']),
      comparisonOperator: Input.asInput<String>(map['comparisonOperator']),
      datapointsToAlarm: Input.asOptionalInput<int>(map['datapointsToAlarm']),
      dimensions: Input.asOptionalInput<Map<String, String>>(map['dimensions']),
      evaluateLowSampleCountPercentiles: Input.asOptionalInput<String>(
          map['evaluateLowSampleCountPercentiles']),
      evaluationPeriods: Input.asInput<int>(map['evaluationPeriods']),
      extendedStatistic:
          Input.asOptionalInput<String>(map['extendedStatistic']),
      insufficientDataActions:
          Input.asOptionalInput<List<String>>(map['insufficientDataActions']),
      metricName: Input.asOptionalInput<String>(map['metricName']),
      metricQueries: Input.asOptionalInput<List<MetricAlarmMetricQuery>>(
          map['metricQueries']),
      name: Input.asOptionalInput<String>(map['name']),
      namespace: Input.asOptionalInput<String>(map['namespace']),
      okActions: Input.asOptionalInput<List<String>>(map['okActions']),
      period: Input.asOptionalInput<int>(map['period']),
      region: Input.asOptionalInput<String>(map['region']),
      statistic: Input.asOptionalInput<String>(map['statistic']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      threshold: Input.asOptionalInput<double>(map['threshold']),
      thresholdMetricId:
          Input.asOptionalInput<String>(map['thresholdMetricId']),
      treatMissingData: Input.asOptionalInput<String>(map['treatMissingData']),
      unit: Input.asOptionalInput<String>(map['unit']),
    );
  }
}
