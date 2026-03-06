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
  const LogMetricFilterArgs({
    this.applyOnTransformedLogs,
    required this.logGroupName,
    required this.metricTransformation,
    this.name,
    required this.pattern,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOnTransformedLogs': ?applyOnTransformedLogs,
      'logGroupName': logGroupName,
      'metricTransformation': pulumi.Input.mapInputValue<LogMetricFilterMetricTransformation, Map<String, dynamic>>(metricTransformation, (value) => value.toMap()),
      'name': ?name,
      'pattern': pattern,
      'region': ?region,
    };
  }

  factory LogMetricFilterArgs.fromMap(Map<String, dynamic> map) {
    return LogMetricFilterArgs(
      applyOnTransformedLogs: (() { final guardedValue = map['applyOnTransformedLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logGroupName: pulumi.Input.fromValue(map['logGroupName'] as String),
      metricTransformation: pulumi.Input.fromValue(LogMetricFilterMetricTransformation.fromMap((map['metricTransformation']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

