// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../log_metric_filter_metric_transformation/log_metric_filter_metric_transformation.dart';

/// The set of arguments for LogMetricFilter.
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

  LogMetricFilterArgs({
    this.applyOnTransformedLogs,
    required this.logGroupName,
    required this.metricTransformation,
    this.name,
    required this.pattern,
    this.region,
  });

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
      applyOnTransformedLogs:
          pulumi.Input.asOptionalInput<bool>(map['applyOnTransformedLogs']),
      logGroupName: pulumi.Input.asInput<String>(map['logGroupName']),
      metricTransformation:
          pulumi.Input.asInput<LogMetricFilterMetricTransformation>(
              map['metricTransformation']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      pattern: pulumi.Input.asInput<String>(map['pattern']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
