// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcNetworkPerformanceMetricSubscription resources.
class VpcNetworkPerformanceMetricSubscriptionState {
  /// The target Region or Availability Zone that the metric subscription is enabled for. For example, `eu-west-1`.
  final pulumi.Input<String>? destination;
  /// The metric used for the enabled subscription. Valid values: `aggregate-latency`. Default: `aggregate-latency`.
  final pulumi.Input<String>? metric;
  /// The data aggregation time for the subscription.
  final pulumi.Input<String>? period;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The source Region or Availability Zone that the metric subscription is enabled for. For example, `us-east-1`.
  final pulumi.Input<String>? source;
  /// The statistic used for the enabled subscription. Valid values: `p50`. Default: `p50`.
  final pulumi.Input<String>? statistic;

  /// Creates a new [VpcNetworkPerformanceMetricSubscriptionState].
  /// [destination] The target Region or Availability Zone that the metric subscription is enabled for. For example, `eu-west-1`.
  /// [metric] The metric used for the enabled subscription. Valid values: `aggregate-latency`. Default: `aggregate-latency`.
  /// [period] The data aggregation time for the subscription.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [source] The source Region or Availability Zone that the metric subscription is enabled for. For example, `us-east-1`.
  /// [statistic] The statistic used for the enabled subscription. Valid values: `p50`. Default: `p50`.
  VpcNetworkPerformanceMetricSubscriptionState({
    pulumi.Output<String>? destination,
    pulumi.Output<String>? metric,
    pulumi.Output<String>? period,
    pulumi.Output<String>? region,
    pulumi.Output<String>? source,
    pulumi.Output<String>? statistic,
  }) :
      destination = pulumi.Input.asOptionalInput<String>(destination),
      metric = pulumi.Input.asOptionalInput<String>(metric),
      period = pulumi.Input.asOptionalInput<String>(period),
      region = pulumi.Input.asOptionalInput<String>(region),
      source = pulumi.Input.asOptionalInput<String>(source),
      statistic = pulumi.Input.asOptionalInput<String>(statistic);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'metric': ?metric,
      'period': ?period,
      'region': ?region,
      'source': ?source,
      'statistic': ?statistic,
    };
  }

  factory VpcNetworkPerformanceMetricSubscriptionState.fromMap(Map<String, dynamic> map) {
    return VpcNetworkPerformanceMetricSubscriptionState(
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      metric: map['metric'] == null ? null : pulumi.Output.create<String>(map['metric'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<String>(map['period'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      statistic: map['statistic'] == null ? null : pulumi.Output.create<String>(map['statistic'] as String),
    );
  }
}

