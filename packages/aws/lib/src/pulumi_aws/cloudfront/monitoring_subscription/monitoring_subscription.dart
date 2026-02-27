import 'package:pulumi/pulumi.dart';
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
class MonitoringSubscription extends CustomResource {
  /// The ID of the distribution that you are enabling metrics for.
  late final Output<String> distributionId;

  /// A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
  late final Output<MonitoringSubscriptionMonitoringSubscription>
      monitoringSubscription;

  MonitoringSubscription(
    String name, {
    MonitoringSubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/monitoringSubscription:MonitoringSubscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.distributionId = registerOutput<String>('distributionId');
    this.monitoringSubscription =
        registerOutput<MonitoringSubscriptionMonitoringSubscription>(
            'monitoringSubscription');
  }
}
