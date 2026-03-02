// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dimension.dart';

/// Definition of MetricTransformation
class MetricTransformation {
  /// (Optional) The value to emit when a filter pattern does not match a log event. This value can be null.
  final pulumi.Input<int>? defaultValue;
  /// The fields to use as dimensions for the metric. One metric filter can include as many as three dimensions.  Metrics extracted from log events are charged as custom metrics. To prevent unexpected high charges, do not specify high-cardinality fields such as ``IPAddress`` or ``requestID`` as dimensions. Each different value found for a dimension is treated as a separate metric and accrues charges as a separate custom metric.  CloudWatch Logs disables a metric filter if it generates 1000 different name/value pairs for your specified dimensions within a certain amount of time. This helps to prevent accidental high charges. You can also set up a billing alarm to alert you if your charges are higher than expected. For more information, see [Creating a Billing Alarm to Monitor Your Estimated Charges](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html).
  final pulumi.Input<List<Dimension>>? dimensions;
  /// The name of the CloudWatch metric.
  final pulumi.Input<String>? metricName;
  /// A custom namespace to contain your metric in CloudWatch. Use namespaces to group together metrics that are similar. For more information, see [Namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace).
  final pulumi.Input<String>? metricNamespace;
  /// The value that is published to the CloudWatch metric. For example, if you're counting the occurrences of a particular term like ``Error``, specify 1 for the metric value. If you're counting the number of bytes transferred, reference the value that is in the log event by using $. followed by the name of the field that you specified in the filter pattern, such as ``$.size``.
  final pulumi.Input<String>? metricValue;
  /// The unit to assign to the metric. If you omit this, the unit is set as ``None``.
  final pulumi.Input<String>? unit;

  /// Creates a new [MetricTransformation].
  /// [defaultValue] (Optional) The value to emit when a filter pattern does not match a log event. This value can be null.
  /// [dimensions] The fields to use as dimensions for the metric. One metric filter can include as many as three dimensions.  Metrics extracted from log events are charged as custom metrics. To prevent unexpected high charges, do not specify high-cardinality fields such as ``IPAddress`` or ``requestID`` as dimensions. Each different value found for a dimension is treated as a separate metric and accrues charges as a separate custom metric.  CloudWatch Logs disables a metric filter if it generates 1000 different name/value pairs for your specified dimensions within a certain amount of time. This helps to prevent accidental high charges. You can also set up a billing alarm to alert you if your charges are higher than expected. For more information, see [Creating a Billing Alarm to Monitor Your Estimated Charges](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html).
  /// [metricName] The name of the CloudWatch metric.
  /// [metricNamespace] A custom namespace to contain your metric in CloudWatch. Use namespaces to group together metrics that are similar. For more information, see [Namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace).
  /// [metricValue] The value that is published to the CloudWatch metric. For example, if you're counting the occurrences of a particular term like ``Error``, specify 1 for the metric value. If you're counting the number of bytes transferred, reference the value that is in the log event by using $. followed by the name of the field that you specified in the filter pattern, such as ``$.size``.
  /// [unit] The unit to assign to the metric. If you omit this, the unit is set as ``None``.
  MetricTransformation({
    this.defaultValue,
    this.dimensions,
    this.metricName,
    this.metricNamespace,
    this.metricValue,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<Dimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<Dimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricName': ?metricName,
      'metricNamespace': ?metricNamespace,
      'metricValue': ?metricValue,
      'unit': ?unit,
    };
  }

  factory MetricTransformation.fromMap(Map<String, dynamic> map) {
    return MetricTransformation(
      defaultValue: map['defaultValue'] == null ? null : (map['defaultValue']! as int).input(),
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<Dimension>(map['dimensions']!, (value) => Dimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metricName: map['metricName'] == null ? null : (map['metricName']! as String).input(),
      metricNamespace: map['metricNamespace'] == null ? null : (map['metricNamespace']! as String).input(),
      metricValue: map['metricValue'] == null ? null : (map['metricValue']! as String).input(),
      unit: map['unit'] == null ? null : (map['unit']! as String).input(),
    );
  }
}

