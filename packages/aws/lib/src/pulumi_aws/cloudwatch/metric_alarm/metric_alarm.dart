import 'package:pulumi/pulumi.dart' as pulumi;
import '../metric_alarm_metric_query/metric_alarm_metric_query.dart';
import 'metric_alarm_args.dart';

/// Provides a CloudWatch Metric Alarm resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Scaling Policies
///
///
///
/// ### With a Metrics Math Expression
///
///
///
///
///
/// ### With a Metrics Insights Query
///
///
///
/// ### Monitoring Healthy NLB Hosts with Target Group and NLB
///
///
///
/// > **NOTE:**  You cannot create a metric alarm consisting of both `statistic` and `extended_statistic` parameters.
/// You must choose one or the other.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `alarm_name` (String) Name of the CloudWatch metric alarm.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import CloudWatch Metric Alarm using the `alarm_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/metricAlarm:MetricAlarm example alarm-12345
/// ```
class MetricAlarm extends pulumi.CustomResource {
  /// Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to `true`.
  late final pulumi.Output<bool?> actionsEnabled;

  /// The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  late final pulumi.Output<List<String>?> alarmActions;

  /// The description for the alarm.
  late final pulumi.Output<String?> alarmDescription;

  /// The ARN of the CloudWatch Metric Alarm.
  late final pulumi.Output<String> arn;

  /// The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanThreshold`, `LessThanOrEqualToThreshold`. Additionally, the values  `LessThanLowerOrGreaterThanUpperThreshold`, `LessThanLowerThreshold`, and `GreaterThanUpperThreshold` are used only for alarms based on anomaly detection models.
  late final pulumi.Output<String> comparisonOperator;

  /// The number of data points that must be breaching to trigger the alarm.
  late final pulumi.Output<int?> datapointsToAlarm;

  /// The dimensions for the alarm's associated metric.  For the list of available dimensions see the AWS documentation [here](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  late final pulumi.Output<Map<String, String>?> dimensions;

  /// Used only for alarms based on percentiles.
  /// If you specify `ignore`, the alarm state will not change during periods with too few data points to be statistically significant.
  /// If you specify `evaluate` or omit this parameter, the alarm will always be evaluated and possibly change state no matter how many data points are available.
  /// The following values are supported: `ignore`, and `evaluate`.
  late final pulumi.Output<String> evaluateLowSampleCountPercentiles;

  /// The number of periods over which data is compared to the specified threshold.
  late final pulumi.Output<int> evaluationPeriods;

  /// The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100.
  late final pulumi.Output<String?> extendedStatistic;

  /// The list of actions to execute when this alarm transitions into an INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  late final pulumi.Output<List<String>?> insufficientDataActions;

  /// The name for the alarm's associated metric.
  /// See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  late final pulumi.Output<String?> metricName;

  /// Enables you to create an alarm based on a metric math expression. You may specify at most 20.
  late final pulumi.Output<List<MetricAlarmMetricQuery>?> metricQueries;

  /// The descriptive name for the alarm. This name must be unique within the user's AWS account
  late final pulumi.Output<String> name;

  /// The namespace for the alarm's associated metric. See docs for the [list of namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/aws-namespaces.html).
  /// See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  late final pulumi.Output<String?> namespace;

  /// The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  late final pulumi.Output<List<String>?> okActions;

  /// The period in seconds over which the specified `statistic` is applied.
  /// Valid values are `10`, `20`, `30`, or any multiple of `60`.
  late final pulumi.Output<int?> period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The statistic to apply to the alarm's associated metric.
  /// Either of the following is supported: `SampleCount`, `Average`, `Sum`, `Minimum`, `Maximum`
  late final pulumi.Output<String?> statistic;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// See [related part of AWS Docs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_PutMetricAlarm.html)
  /// for details about valid values.
  ///
  /// > **NOTE:**  If you specify at least one `metric_query`, you may not specify a `metric_name`, `namespace`, `period` or `statistic`. If you do not specify a `metric_query`, you must specify each of these (although you may use `extended_statistic` instead of `statistic`).
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models.
  late final pulumi.Output<double?> threshold;

  /// If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY_DETECTION_BAND function.
  late final pulumi.Output<String?> thresholdMetricId;

  /// Sets how this alarm is to handle missing data points. The following values are supported: `missing`, `ignore`, `breaching` and `notBreaching`. Defaults to `missing`.
  late final pulumi.Output<String?> treatMissingData;

  /// The unit for the alarm's associated metric.
  late final pulumi.Output<String?> unit;

  MetricAlarm(
    String name, {
    MetricAlarmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/metricAlarm:MetricAlarm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actionsEnabled = registerOutput<bool?>('actionsEnabled');
    this.alarmActions = registerOutput<List<String>?>('alarmActions');
    this.alarmDescription = registerOutput<String?>('alarmDescription');
    this.arn = registerOutput<String>('arn');
    this.comparisonOperator = registerOutput<String>('comparisonOperator');
    this.datapointsToAlarm = registerOutput<int?>('datapointsToAlarm');
    this.dimensions = registerOutput<Map<String, String>?>('dimensions');
    this.evaluateLowSampleCountPercentiles =
        registerOutput<String>('evaluateLowSampleCountPercentiles');
    this.evaluationPeriods = registerOutput<int>('evaluationPeriods');
    this.extendedStatistic = registerOutput<String?>('extendedStatistic');
    this.insufficientDataActions =
        registerOutput<List<String>?>('insufficientDataActions');
    this.metricName = registerOutput<String?>('metricName');
    this.metricQueries =
        registerOutput<List<MetricAlarmMetricQuery>?>('metricQueries');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String?>('namespace');
    this.okActions = registerOutput<List<String>?>('okActions');
    this.period = registerOutput<int?>('period');
    this.region = registerOutput<String>('region');
    this.statistic = registerOutput<String?>('statistic');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.threshold = registerOutput<double?>('threshold');
    this.thresholdMetricId = registerOutput<String?>('thresholdMetricId');
    this.treatMissingData = registerOutput<String?>('treatMissingData');
    this.unit = registerOutput<String?>('unit');
  }
}
