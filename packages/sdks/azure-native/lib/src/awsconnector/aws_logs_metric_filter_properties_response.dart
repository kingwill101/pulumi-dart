// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_transformation_response.dart';

/// Definition of awsLogsMetricFilter
class AwsLogsMetricFilterPropertiesResponse {
  /// The name of the metric filter.
  final pulumi.Input<String>? filterName;
  /// A filter pattern for extracting metric data out of ingested log events. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  final pulumi.Input<String>? filterPattern;
  /// The name of an existing log group that you want to associate with this metric filter.
  final pulumi.Input<String>? logGroupName;
  /// The metric transformations.
  final pulumi.Input<List<MetricTransformationResponse>>? metricTransformations;

  /// Creates a new [AwsLogsMetricFilterPropertiesResponse].
  /// [filterName] The name of the metric filter.
  /// [filterPattern] A filter pattern for extracting metric data out of ingested log events. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  /// [logGroupName] The name of an existing log group that you want to associate with this metric filter.
  /// [metricTransformations] The metric transformations.
  const AwsLogsMetricFilterPropertiesResponse({
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
      'metricTransformations': ?pulumi.Input.mapOptionalInputValue<List<MetricTransformationResponse>, List<Map<String, dynamic>>>(metricTransformations, (value) => pulumi.Input.encodeList<MetricTransformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsLogsMetricFilterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsLogsMetricFilterPropertiesResponse(
      filterName: (() { final guardedValue = map['filterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterPattern: (() { final guardedValue = map['filterPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logGroupName: (() { final guardedValue = map['logGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricTransformations: (() { final guardedValue = map['metricTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetricTransformationResponse>(guardedValue, (value) => MetricTransformationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
