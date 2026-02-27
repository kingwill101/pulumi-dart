// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcNetworkPerformanceMetricSubscription.
class VpcNetworkPerformanceMetricSubscriptionArgs {
  /// The target Region or Availability Zone that the metric subscription is enabled for. For example, `eu-west-1`.
  final pulumi.Input<String> destination;

  /// The metric used for the enabled subscription. Valid values: `aggregate-latency`. Default: `aggregate-latency`.
  final pulumi.Input<String>? metric;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The source Region or Availability Zone that the metric subscription is enabled for. For example, `us-east-1`.
  final pulumi.Input<String> source;

  /// The statistic used for the enabled subscription. Valid values: `p50`. Default: `p50`.
  final pulumi.Input<String>? statistic;

  VpcNetworkPerformanceMetricSubscriptionArgs({
    required this.destination,
    this.metric,
    this.region,
    required this.source,
    this.statistic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = destination;
    final metricValue = metric;
    if (metricValue != null) {
      map['metric'] = metricValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['source'] = source;
    final statisticValue = statistic;
    if (statisticValue != null) {
      map['statistic'] = statisticValue;
    }
    return map;
  }

  factory VpcNetworkPerformanceMetricSubscriptionArgs.fromMap(
      Map<String, dynamic> map) {
    return VpcNetworkPerformanceMetricSubscriptionArgs(
      destination: pulumi.Input.asInput<String>(map['destination']),
      metric: pulumi.Input.asOptionalInput<String>(map['metric']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      source: pulumi.Input.asInput<String>(map['source']),
      statistic: pulumi.Input.asOptionalInput<String>(map['statistic']),
    );
  }
}
