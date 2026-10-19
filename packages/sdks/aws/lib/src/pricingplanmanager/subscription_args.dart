// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_timeouts.dart';

/// {@template pulumi_pricingplanmanager_subscription_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_pricingplanmanager_subscription_subscription_args_doc}
class SubscriptionArgs {
  /// Whether the subscription requires explicit approval before billing starts. Valid values: `MANUAL`, `IMMEDIATE`. If not set, AWS defaults to `MANUAL` for paid-tier subscriptions and `IMMEDIATE` for `FREE` tier subscriptions. With `MANUAL`, paid-tier subscriptions remain in `PENDING_APPROVAL` (unbilled, and unmodifiable) until approved with a separate `ApprovePaidSubscription` API call. This value is used only at creation time and is not returned by the AWS API. Changing this argument creates a new resource.
  final pulumi.Input<String?>? approvalMode;
  /// Pricing plan family to subscribe to, such as `CloudFront`. Changing this argument creates a new resource.
  final pulumi.Input<String> planFamily;
  /// Tier level for the subscription, such as `FREE`, `PRO`, `BUSINESS`, or `PREMIUM`. Upgrades take effect immediately. Downgrades are scheduled by AWS to take effect at the end of the current billing period: until then AWS keeps billing the old tier and this argument reflects the desired (scheduled) tier, with the pending change exposed in `scheduledChange`. Raising the tier again before the downgrade takes effect reverts the pending change.
  final pulumi.Input<String> planTier;
  /// Set of ARNs of the AWS resources to include in the subscription, between 1 and 10 entries. For subscriptions in the `CloudFront` plan family, the resources must include exactly one CloudFront distribution and exactly one WAF web ACL, and can also include other supported resources such as Route 53 hosted zones (any tier) and CloudFront KeyValueStores (paid tiers only). Associated resources are protected by AWS while covered — for example, a hosted zone cannot be deleted until it is disassociated from the plan.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> resourceArns;
  final pulumi.Input<SubscriptionTimeouts?>? timeouts;
  /// Usage level within the plan tier. Specify `DEFAULT` for the base configuration, or a higher level if the plan tier supports it. If omitted on an update, the usage level is reset to the plan tier's default.
  final pulumi.Input<String?>? usageLevel;

  /// Creates a new [SubscriptionArgs].
  /// [approvalMode] Whether the subscription requires explicit approval before billing starts. Valid values: `MANUAL`, `IMMEDIATE`. If not set, AWS defaults to `MANUAL` for paid-tier subscriptions and `IMMEDIATE` for `FREE` tier subscriptions. With `MANUAL`, paid-tier subscriptions remain in `PENDING_APPROVAL` (unbilled, and unmodifiable) until approved with a separate `ApprovePaidSubscription` API call. This value is used only at creation time and is not returned by the AWS API. Changing this argument creates a new resource.
  /// [planFamily] Pricing plan family to subscribe to, such as `CloudFront`. Changing this argument creates a new resource.
  /// [planTier] Tier level for the subscription, such as `FREE`, `PRO`, `BUSINESS`, or `PREMIUM`. Upgrades take effect immediately. Downgrades are scheduled by AWS to take effect at the end of the current billing period: until then AWS keeps billing the old tier and this argument reflects the desired (scheduled) tier, with the pending change exposed in `scheduledChange`. Raising the tier again before the downgrade takes effect reverts the pending change.
  /// [resourceArns] Set of ARNs of the AWS resources to include in the subscription, between 1 and 10 entries. For subscriptions in the `CloudFront` plan family, the resources must include exactly one CloudFront distribution and exactly one WAF web ACL, and can also include other supported resources such as Route 53 hosted zones (any tier) and CloudFront KeyValueStores (paid tiers only). Associated resources are protected by AWS while covered — for example, a hosted zone cannot be deleted until it is disassociated from the plan.
  /// [timeouts] Optional.
  /// [usageLevel] Usage level within the plan tier. Specify `DEFAULT` for the base configuration, or a higher level if the plan tier supports it. If omitted on an update, the usage level is reset to the plan tier's default.
  const SubscriptionArgs({
    this.approvalMode,
    required this.planFamily,
    required this.planTier,
    required this.resourceArns,
    this.timeouts,
    this.usageLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalMode': ?approvalMode,
      'planFamily': planFamily,
      'planTier': planTier,
      'resourceArns': resourceArns,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SubscriptionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'usageLevel': ?usageLevel,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      approvalMode: (() { final guardedValue = map['approvalMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planFamily: pulumi.Input.fromValue(map['planFamily'] as String),
      planTier: pulumi.Input.fromValue(map['planTier'] as String),
      resourceArns: pulumi.Input.fromValue((map['resourceArns'] as List).cast<String>()),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      usageLevel: (() { final guardedValue = map['usageLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
