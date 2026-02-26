// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../metric_alarm_metric_query/metric_alarm_metric_query.dart';

/// The set of arguments for MetricAlarm.
class MetricAlarmArgs {
  /// Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
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
  /// If you specify <span pulumi-lang-nodejs="`ignore`" pulumi-lang-dotnet="`Ignore`" pulumi-lang-go="`ignore`" pulumi-lang-python="`ignore`" pulumi-lang-yaml="`ignore`" pulumi-lang-java="`ignore`">`ignore`</span>, the alarm state will not change during periods with too few data points to be statistically significant.
  /// If you specify <span pulumi-lang-nodejs="`evaluate`" pulumi-lang-dotnet="`Evaluate`" pulumi-lang-go="`evaluate`" pulumi-lang-python="`evaluate`" pulumi-lang-yaml="`evaluate`" pulumi-lang-java="`evaluate`">`evaluate`</span> or omit this parameter, the alarm will always be evaluated and possibly change state no matter how many data points are available.
  /// The following values are supported: <span pulumi-lang-nodejs="`ignore`" pulumi-lang-dotnet="`Ignore`" pulumi-lang-go="`ignore`" pulumi-lang-python="`ignore`" pulumi-lang-yaml="`ignore`" pulumi-lang-java="`ignore`">`ignore`</span>, and <span pulumi-lang-nodejs="`evaluate`" pulumi-lang-dotnet="`Evaluate`" pulumi-lang-go="`evaluate`" pulumi-lang-python="`evaluate`" pulumi-lang-yaml="`evaluate`" pulumi-lang-java="`evaluate`">`evaluate`</span>.
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

  /// The period in seconds over which the specified <span pulumi-lang-nodejs="`statistic`" pulumi-lang-dotnet="`Statistic`" pulumi-lang-go="`statistic`" pulumi-lang-python="`statistic`" pulumi-lang-yaml="`statistic`" pulumi-lang-java="`statistic`">`statistic`</span> is applied.
  /// Valid values are <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span>, <span pulumi-lang-nodejs="`20`" pulumi-lang-dotnet="`20`" pulumi-lang-go="`20`" pulumi-lang-python="`20`" pulumi-lang-yaml="`20`" pulumi-lang-java="`20`">`20`</span>, <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span>, or any multiple of <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>.
  final Input<int>? period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The statistic to apply to the alarm's associated metric.
  /// Either of the following is supported: `SampleCount`, `Average`, `Sum`, `Minimum`, `Maximum`
  final Input<String>? statistic;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// See [related part of AWS Docs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_PutMetricAlarm.html)
  /// for details about valid values.
  ///
  /// > **NOTE:**  If you specify at least one <span pulumi-lang-nodejs="`metricQuery`" pulumi-lang-dotnet="`MetricQuery`" pulumi-lang-go="`metricQuery`" pulumi-lang-python="`metric_query`" pulumi-lang-yaml="`metricQuery`" pulumi-lang-java="`metricQuery`">`metric_query`</span>, you may not specify a <span pulumi-lang-nodejs="`metricName`" pulumi-lang-dotnet="`MetricName`" pulumi-lang-go="`metricName`" pulumi-lang-python="`metric_name`" pulumi-lang-yaml="`metricName`" pulumi-lang-java="`metricName`">`metric_name`</span>, <span pulumi-lang-nodejs="`namespace`" pulumi-lang-dotnet="`Namespace`" pulumi-lang-go="`namespace`" pulumi-lang-python="`namespace`" pulumi-lang-yaml="`namespace`" pulumi-lang-java="`namespace`">`namespace`</span>, <span pulumi-lang-nodejs="`period`" pulumi-lang-dotnet="`Period`" pulumi-lang-go="`period`" pulumi-lang-python="`period`" pulumi-lang-yaml="`period`" pulumi-lang-java="`period`">`period`</span> or <span pulumi-lang-nodejs="`statistic`" pulumi-lang-dotnet="`Statistic`" pulumi-lang-go="`statistic`" pulumi-lang-python="`statistic`" pulumi-lang-yaml="`statistic`" pulumi-lang-java="`statistic`">`statistic`</span>. If you do not specify a <span pulumi-lang-nodejs="`metricQuery`" pulumi-lang-dotnet="`MetricQuery`" pulumi-lang-go="`metricQuery`" pulumi-lang-python="`metric_query`" pulumi-lang-yaml="`metricQuery`" pulumi-lang-java="`metricQuery`">`metric_query`</span>, you must specify each of these (although you may use <span pulumi-lang-nodejs="`extendedStatistic`" pulumi-lang-dotnet="`ExtendedStatistic`" pulumi-lang-go="`extendedStatistic`" pulumi-lang-python="`extended_statistic`" pulumi-lang-yaml="`extendedStatistic`" pulumi-lang-java="`extendedStatistic`">`extended_statistic`</span> instead of <span pulumi-lang-nodejs="`statistic`" pulumi-lang-dotnet="`Statistic`" pulumi-lang-go="`statistic`" pulumi-lang-python="`statistic`" pulumi-lang-yaml="`statistic`" pulumi-lang-java="`statistic`">`statistic`</span>).
  final Input<Map<String, String>>? tags;

  /// The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models.
  final Input<double>? threshold;

  /// If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY_DETECTION_BAND function.
  final Input<String>? thresholdMetricId;

  /// Sets how this alarm is to handle missing data points. The following values are supported: <span pulumi-lang-nodejs="`missing`" pulumi-lang-dotnet="`Missing`" pulumi-lang-go="`missing`" pulumi-lang-python="`missing`" pulumi-lang-yaml="`missing`" pulumi-lang-java="`missing`">`missing`</span>, <span pulumi-lang-nodejs="`ignore`" pulumi-lang-dotnet="`Ignore`" pulumi-lang-go="`ignore`" pulumi-lang-python="`ignore`" pulumi-lang-yaml="`ignore`" pulumi-lang-java="`ignore`">`ignore`</span>, <span pulumi-lang-nodejs="`breaching`" pulumi-lang-dotnet="`Breaching`" pulumi-lang-go="`breaching`" pulumi-lang-python="`breaching`" pulumi-lang-yaml="`breaching`" pulumi-lang-java="`breaching`">`breaching`</span> and `notBreaching`. Defaults to <span pulumi-lang-nodejs="`missing`" pulumi-lang-dotnet="`Missing`" pulumi-lang-go="`missing`" pulumi-lang-python="`missing`" pulumi-lang-yaml="`missing`" pulumi-lang-java="`missing`">`missing`</span>.
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
