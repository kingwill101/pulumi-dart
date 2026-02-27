import 'package:pulumi/pulumi.dart' as pulumi;
import '../monitoring_subscription_monitoring_subscription/monitoring_subscription_monitoring_subscription.dart';
import 'monitoring_subscription_args.dart';

/// Provides a CloudFront real-time log configuration resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront monitoring subscription using the id. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/monitoringSubscription:MonitoringSubscription example E3QYSUHO4VYRGB
/// ```
class MonitoringSubscription extends pulumi.CustomResource {
  /// The ID of the distribution that you are enabling metrics for.
  late final pulumi.Output<String> distributionId;

  /// A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
  late final pulumi.Output<MonitoringSubscriptionMonitoringSubscription>
      monitoringSubscription;

  MonitoringSubscription(
    String name, {
    MonitoringSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/monitoringSubscription:MonitoringSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.distributionId = registerOutput<String>('distributionId');
    this.monitoringSubscription =
        registerOutput<MonitoringSubscriptionMonitoringSubscription>(
            'monitoringSubscription');
  }
}
