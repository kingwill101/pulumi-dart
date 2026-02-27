import 'package:pulumi/pulumi.dart';
import 'subscription_args.dart';

/// Resource for managing an AWS Shield Subscription.
///
/// > This resource creates a subscription to AWS Shield Advanced, which requires a 1 year subscription commitment with a monthly fee. Refer to the [AWS Shield Pricing](https://aws.amazon.com/shield/pricing/) page for more details.
///
/// > Destruction of this resource will set `auto_renew` to `DISABLED`. Automatic renewal can only be disabled during the last 30 days of a subscription. To unsubscribe outside of this window, you must contact AWS Support. Set `skip_destroy` to `true` to skip modifying the `auto_renew` argument during destruction.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Shield Subscription using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:shield/subscription:Subscription example 123456789012
/// ```
class Subscription extends CustomResource {
  /// Toggle for automated renewal of the subscription. Valid values are `ENABLED` or `DISABLED`. Default is `ENABLED`.
  late final Output<String> autoRenew;

  /// Skip attempting to disable automated renewal upon destruction. If set to `true`, the `auto_renew` value will be left as-is and the resource will simply be removed from state.
  late final Output<bool?> skipDestroy;

  Subscription(
    String name, {
    SubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:shield/subscription:Subscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoRenew = registerOutput<String>('autoRenew');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
  }
}
