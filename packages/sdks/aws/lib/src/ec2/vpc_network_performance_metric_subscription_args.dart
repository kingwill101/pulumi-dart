// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_network_performance_metric_subscription_vpc_network_performance_metric_subscription_args_doc}
/// The set of arguments for VpcNetworkPerformanceMetricSubscription.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_network_performance_metric_subscription_vpc_network_performance_metric_subscription_args_doc}
class VpcNetworkPerformanceMetricSubscriptionArgs {
  /// The target Region or Availability Zone that the metric subscription is enabled for. For example, `eu-west-1`.
  final pulumi.Input<String> destination;
  /// The metric used for the enabled subscription. Valid values: `aggregate-latency`. Default: `aggregate-latency`.
  final pulumi.Input<String?>? metric;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The source Region or Availability Zone that the metric subscription is enabled for. For example, `us-east-1`.
  final pulumi.Input<String> source;
  /// The statistic used for the enabled subscription. Valid values: `p50`. Default: `p50`.
  final pulumi.Input<String?>? statistic;

  /// Creates a new [VpcNetworkPerformanceMetricSubscriptionArgs].
  /// [destination] The target Region or Availability Zone that the metric subscription is enabled for. For example, `eu-west-1`.
  /// [metric] The metric used for the enabled subscription. Valid values: `aggregate-latency`. Default: `aggregate-latency`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [source] The source Region or Availability Zone that the metric subscription is enabled for. For example, `us-east-1`.
  /// [statistic] The statistic used for the enabled subscription. Valid values: `p50`. Default: `p50`.
  const VpcNetworkPerformanceMetricSubscriptionArgs({
    required this.destination,
    this.metric,
    this.region,
    required this.source,
    this.statistic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'metric': ?metric,
      'region': ?region,
      'source': source,
      'statistic': ?statistic,
    };
  }

  factory VpcNetworkPerformanceMetricSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return VpcNetworkPerformanceMetricSubscriptionArgs(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
      statistic: (() { final guardedValue = map['statistic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
