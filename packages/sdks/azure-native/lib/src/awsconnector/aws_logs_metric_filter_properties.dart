// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_transformation.dart';

/// Definition of awsLogsMetricFilter
class AwsLogsMetricFilterProperties {
  /// The name of the metric filter.
  final pulumi.Input<String>? filterName;
  /// A filter pattern for extracting metric data out of ingested log events. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  final pulumi.Input<String>? filterPattern;
  /// The name of an existing log group that you want to associate with this metric filter.
  final pulumi.Input<String>? logGroupName;
  /// The metric transformations.
  final pulumi.Input<List<MetricTransformation>>? metricTransformations;

  /// Creates a new [AwsLogsMetricFilterProperties].
  /// [filterName] The name of the metric filter.
  /// [filterPattern] A filter pattern for extracting metric data out of ingested log events. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  /// [logGroupName] The name of an existing log group that you want to associate with this metric filter.
  /// [metricTransformations] The metric transformations.
  const AwsLogsMetricFilterProperties({
    this.filterName,
    this.filterPattern,
    this.logGroupName,
    this.metricTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterName': ?filterName,
      'filterPattern': ?filterPattern,
      'logGroupName': ?logGroupName,
      'metricTransformations': ?pulumi.Input.mapOptionalInputValue<List<MetricTransformation>, List<Map<String, dynamic>>>(metricTransformations, (value) => pulumi.Input.encodeList<MetricTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsLogsMetricFilterProperties.fromMap(Map<String, dynamic> map) {
    return AwsLogsMetricFilterProperties(
      filterName: (() { final guardedValue = map['filterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterPattern: (() { final guardedValue = map['filterPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logGroupName: (() { final guardedValue = map['logGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricTransformations: (() { final guardedValue = map['metricTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetricTransformation>(guardedValue, (value) => MetricTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
