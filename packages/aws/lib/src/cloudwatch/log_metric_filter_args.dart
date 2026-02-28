// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_metric_filter_metric_transformation.dart';

/// {@template pulumi_cloudwatch_log_metric_filter_log_metric_filter_args_doc}
/// The set of arguments for LogMetricFilter.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_metric_filter_log_metric_filter_args_doc}
class LogMetricFilterArgs {
  /// Whether the metric filter will be applied on the transformed version of the log events instead of the original ingested log events. Defaults to `false`. Valid only for log groups that have an active log transformer.
  final pulumi.Input<bool>? applyOnTransformedLogs;

  /// The name of the log group to associate the metric filter with.
  final pulumi.Input<String> logGroupName;

  /// A block defining collection of information needed to define how metric data gets emitted. See below.
  final pulumi.Input<LogMetricFilterMetricTransformation> metricTransformation;

  /// A name for the metric filter.
  final pulumi.Input<String>? name;

  /// A valid [CloudWatch Logs filter pattern](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/FilterAndPatternSyntax.html)
  /// for extracting metric data out of ingested log events.
  final pulumi.Input<String> pattern;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogMetricFilterArgs].
  /// [applyOnTransformedLogs] Whether the metric filter will be applied on the transformed version of the log events instead of the original ingested log events. Defaults to `false`. Valid only for log groups that have an active log transformer.
  /// [logGroupName] The name of the log group to associate the metric filter with.
  /// [metricTransformation] A block defining collection of information needed to define how metric data gets emitted. See below.
  /// [name] A name for the metric filter.
  /// [pattern] A valid [CloudWatch Logs filter pattern](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/FilterAndPatternSyntax.html)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogMetricFilterArgs({
    bool? applyOnTransformedLogs,
    required String logGroupName,
    required LogMetricFilterMetricTransformation metricTransformation,
    String? name,
    required String pattern,
    String? region,
  })  : applyOnTransformedLogs =
            pulumi.Input.asOptionalInput<bool>(applyOnTransformedLogs),
        logGroupName = pulumi.Input.asInput<String>(logGroupName),
        metricTransformation =
            pulumi.Input.asInput<LogMetricFilterMetricTransformation>(
                metricTransformation),
        name = pulumi.Input.asOptionalInput<String>(name),
        pattern = pulumi.Input.asInput<String>(pattern),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applyOnTransformedLogsValue = applyOnTransformedLogs;
    if (applyOnTransformedLogsValue != null) {
      map['applyOnTransformedLogs'] = applyOnTransformedLogsValue;
    }
    map['logGroupName'] = logGroupName;
    map['metricTransformation'] = pulumi.Input.mapInputValue<
        LogMetricFilterMetricTransformation,
        Map<String, dynamic>>(metricTransformation, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['pattern'] = pattern;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LogMetricFilterArgs.fromMap(Map<String, dynamic> map) {
    return LogMetricFilterArgs(
      applyOnTransformedLogs: map['applyOnTransformedLogs'] == null
          ? null
          : map['applyOnTransformedLogs'] as bool,
      logGroupName: map['logGroupName'] as String,
      metricTransformation: LogMetricFilterMetricTransformation.fromMap(
          (map['metricTransformation'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      pattern: map['pattern'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
