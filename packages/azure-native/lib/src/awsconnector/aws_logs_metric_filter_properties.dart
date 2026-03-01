// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_transformation.dart';

/// Definition of awsLogsMetricFilter
class AwsLogsMetricFilterProperties {
  /// The name of the metric filter.
  final String? filterName;
  /// A filter pattern for extracting metric data out of ingested log events. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  final String? filterPattern;
  /// The name of an existing log group that you want to associate with this metric filter.
  final String? logGroupName;
  /// The metric transformations.
  final List<MetricTransformation>? metricTransformations;

  /// Creates a new [AwsLogsMetricFilterProperties].
  /// [filterName] The name of the metric filter.
  /// [filterPattern] A filter pattern for extracting metric data out of ingested log events. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  /// [logGroupName] The name of an existing log group that you want to associate with this metric filter.
  /// [metricTransformations] The metric transformations.
  AwsLogsMetricFilterProperties({
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
      'metricTransformations': ?metricTransformations == null ? null : pulumi.Input.encodeList<MetricTransformation, Map<String, dynamic>>(metricTransformations!, (value) => value.toMap()),
    };
  }

  factory AwsLogsMetricFilterProperties.fromMap(Map<String, dynamic> map) {
    return AwsLogsMetricFilterProperties(
      filterName: map['filterName'] == null ? null : map['filterName'] as String,
      filterPattern: map['filterPattern'] == null ? null : map['filterPattern'] as String,
      logGroupName: map['logGroupName'] == null ? null : map['logGroupName'] as String,
      metricTransformations: map['metricTransformations'] == null ? null : pulumi.Input.decodeList<MetricTransformation>(map['metricTransformations'], (value) => MetricTransformation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

