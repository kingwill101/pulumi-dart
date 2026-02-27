import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_network_performance_metric_subscription_args.dart';

/// Provides a resource to manage an Infrastructure Performance subscription.
class VpcNetworkPerformanceMetricSubscription extends pulumi.CustomResource {
  /// The target Region or Availability Zone that the metric subscription is enabled for. For example, `eu-west-1`.
  late final pulumi.Output<String> destination;

  /// The metric used for the enabled subscription. Valid values: `aggregate-latency`. Default: `aggregate-latency`.
  late final pulumi.Output<String?> metric;

  /// The data aggregation time for the subscription.
  late final pulumi.Output<String> period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The source Region or Availability Zone that the metric subscription is enabled for. For example, `us-east-1`.
  late final pulumi.Output<String> source;

  /// The statistic used for the enabled subscription. Valid values: `p50`. Default: `p50`.
  late final pulumi.Output<String?> statistic;

  VpcNetworkPerformanceMetricSubscription(
    String name, {
    VpcNetworkPerformanceMetricSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcNetworkPerformanceMetricSubscription:VpcNetworkPerformanceMetricSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.destination = registerOutput<String>('destination');
    this.metric = registerOutput<String?>('metric');
    this.period = registerOutput<String>('period');
    this.region = registerOutput<String>('region');
    this.source = registerOutput<String>('source');
    this.statistic = registerOutput<String?>('statistic');
  }
}
