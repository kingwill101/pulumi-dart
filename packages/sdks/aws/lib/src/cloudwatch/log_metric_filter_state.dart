// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_metric_filter_metric_transformation.dart';

/// Input properties used for looking up and filtering LogMetricFilter resources.
class LogMetricFilterState {
  /// Whether the metric filter will be applied on the transformed version of the log events instead of the original ingested log events. Defaults to `false`. Valid only for log groups that have an active log transformer.
  final pulumi.Input<bool>? applyOnTransformedLogs;
  /// The name of the log group to associate the metric filter with.
  final pulumi.Input<String>? logGroupName;
  /// A block defining collection of information needed to define how metric data gets emitted. See below.
  final pulumi.Input<LogMetricFilterMetricTransformation>? metricTransformation;
  /// A name for the metric filter.
  final pulumi.Input<String>? name;
  /// A valid [CloudWatch Logs filter pattern](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/FilterAndPatternSyntax.html)
  /// for extracting metric data out of ingested log events.
  final pulumi.Input<String>? pattern;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogMetricFilterState].
  /// [applyOnTransformedLogs] Whether the metric filter will be applied on the transformed version of the log events instead of the original ingested log events. Defaults to `false`. Valid only for log groups that have an active log transformer.
  /// [logGroupName] The name of the log group to associate the metric filter with.
  /// [metricTransformation] A block defining collection of information needed to define how metric data gets emitted. See below.
  /// [name] A name for the metric filter.
  /// [pattern] A valid [CloudWatch Logs filter pattern](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/FilterAndPatternSyntax.html)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogMetricFilterState({
    pulumi.Output<bool>? applyOnTransformedLogs,
    pulumi.Output<String>? logGroupName,
    pulumi.Output<LogMetricFilterMetricTransformation>? metricTransformation,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pattern,
    pulumi.Output<String>? region,
  }) :
      applyOnTransformedLogs = pulumi.Input.asOptionalInput<bool>(applyOnTransformedLogs),
      logGroupName = pulumi.Input.asOptionalInput<String>(logGroupName),
      metricTransformation = pulumi.Input.asOptionalInput<LogMetricFilterMetricTransformation>(metricTransformation),
      name = pulumi.Input.asOptionalInput<String>(name),
      pattern = pulumi.Input.asOptionalInput<String>(pattern),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOnTransformedLogs': ?applyOnTransformedLogs,
      'logGroupName': ?logGroupName,
      'metricTransformation': ?pulumi.Input.mapOptionalInputValue<LogMetricFilterMetricTransformation, Map<String, dynamic>>(metricTransformation, (value) => value.toMap()),
      'name': ?name,
      'pattern': ?pattern,
      'region': ?region,
    };
  }

  factory LogMetricFilterState.fromMap(Map<String, dynamic> map) {
    return LogMetricFilterState(
      applyOnTransformedLogs: map['applyOnTransformedLogs'] == null ? null : pulumi.Output.create<bool>(map['applyOnTransformedLogs'] as bool),
      logGroupName: map['logGroupName'] == null ? null : pulumi.Output.create<String>(map['logGroupName'] as String),
      metricTransformation: map['metricTransformation'] == null ? null : pulumi.Output.create<LogMetricFilterMetricTransformation>(LogMetricFilterMetricTransformation.fromMap((map['metricTransformation'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pattern: map['pattern'] == null ? null : pulumi.Output.create<String>(map['pattern'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

