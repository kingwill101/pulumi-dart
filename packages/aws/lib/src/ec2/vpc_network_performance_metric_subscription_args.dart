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
  final pulumi.Input<String>? metric;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The source Region or Availability Zone that the metric subscription is enabled for. For example, `us-east-1`.
  final pulumi.Input<String> source;
  /// The statistic used for the enabled subscription. Valid values: `p50`. Default: `p50`.
  final pulumi.Input<String>? statistic;

  /// Creates a new [VpcNetworkPerformanceMetricSubscriptionArgs].
  /// [destination] The target Region or Availability Zone that the metric subscription is enabled for. For example, `eu-west-1`.
  /// [metric] The metric used for the enabled subscription. Valid values: `aggregate-latency`. Default: `aggregate-latency`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [source] The source Region or Availability Zone that the metric subscription is enabled for. For example, `us-east-1`.
  /// [statistic] The statistic used for the enabled subscription. Valid values: `p50`. Default: `p50`.
  VpcNetworkPerformanceMetricSubscriptionArgs({
    required String destination,
    String? metric,
    String? region,
    required String source,
    String? statistic,
  }) :
      destination = pulumi.Input.asInput<String>(destination),
      metric = pulumi.Input.asOptionalInput<String>(metric),
      region = pulumi.Input.asOptionalInput<String>(region),
      source = pulumi.Input.asInput<String>(source),
      statistic = pulumi.Input.asOptionalInput<String>(statistic);

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
      destination: map['destination'] as String,
      metric: map['metric'] == null ? null : map['metric'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      source: map['source'] as String,
      statistic: map['statistic'] == null ? null : map['statistic'] as String,
    );
  }
}

