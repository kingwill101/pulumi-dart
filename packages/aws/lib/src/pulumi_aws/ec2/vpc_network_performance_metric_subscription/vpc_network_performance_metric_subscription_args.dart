// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcNetworkPerformanceMetricSubscription.
class VpcNetworkPerformanceMetricSubscriptionArgs {
  /// The target Region or Availability Zone that the metric subscription is enabled for. For example, `eu-west-1`.
  final Input<String> destination;

  /// The metric used for the enabled subscription. Valid values: `aggregate-latency`. Default: `aggregate-latency`.
  final Input<String>? metric;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The source Region or Availability Zone that the metric subscription is enabled for. For example, `us-east-1`.
  final Input<String> source;

  /// The statistic used for the enabled subscription. Valid values: <span pulumi-lang-nodejs="`p50`" pulumi-lang-dotnet="`P50`" pulumi-lang-go="`p50`" pulumi-lang-python="`p50`" pulumi-lang-yaml="`p50`" pulumi-lang-java="`p50`">`p50`</span>. Default: <span pulumi-lang-nodejs="`p50`" pulumi-lang-dotnet="`P50`" pulumi-lang-go="`p50`" pulumi-lang-python="`p50`" pulumi-lang-yaml="`p50`" pulumi-lang-java="`p50`">`p50`</span>.
  final Input<String>? statistic;

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
      destination: Input.asInput<String>(map['destination']),
      metric: Input.asOptionalInput<String>(map['metric']),
      region: Input.asOptionalInput<String>(map['region']),
      source: Input.asInput<String>(map['source']),
      statistic: Input.asOptionalInput<String>(map['statistic']),
    );
  }
}
