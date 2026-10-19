// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_scheduled_change.dart';
import 'subscription_timeouts.dart';

/// Input properties used for looking up and filtering Subscription resources.
class SubscriptionState {
  /// Whether the subscription requires explicit approval before billing starts. Valid values: `MANUAL`, `IMMEDIATE`. If not set, AWS defaults to `MANUAL` for paid-tier subscriptions and `IMMEDIATE` for `FREE` tier subscriptions. With `MANUAL`, paid-tier subscriptions remain in `PENDING_APPROVAL` (unbilled, and unmodifiable) until approved with a separate `ApprovePaidSubscription` API call. This value is used only at creation time and is not returned by the AWS API. Changing this argument creates a new resource.
  final pulumi.Input<String?>? approvalMode;
  /// ARN of the subscription.
  final pulumi.Input<String?>? arn;
  /// Entity tag of the subscription, used by AWS for optimistic concurrency control.
  final pulumi.Input<String?>? etag;
  /// Pricing plan family to subscribe to, such as `CloudFront`. Changing this argument creates a new resource.
  final pulumi.Input<String?>? planFamily;
  /// Tier level for the subscription, such as `FREE`, `PRO`, `BUSINESS`, or `PREMIUM`. Upgrades take effect immediately. Downgrades are scheduled by AWS to take effect at the end of the current billing period: until then AWS keeps billing the old tier and this argument reflects the desired (scheduled) tier, with the pending change exposed in `scheduledChange`. Raising the tier again before the downgrade takes effect reverts the pending change.
  final pulumi.Input<String?>? planTier;
  /// Set of ARNs of the AWS resources to include in the subscription, between 1 and 10 entries. For subscriptions in the `CloudFront` plan family, the resources must include exactly one CloudFront distribution and exactly one WAF web ACL, and can also include other supported resources such as Route 53 hosted zones (any tier) and CloudFront KeyValueStores (paid tiers only). Associated resources are protected by AWS while covered — for example, a hosted zone cannot be deleted until it is disassociated from the plan.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>?>? resourceArns;
  /// Pending change that takes effect at the end of the current billing period, if any. See `scheduledChange` below.
  final pulumi.Input<List<SubscriptionScheduledChange>?>? scheduledChanges;
  /// Current status of the subscription. Valid values: `PENDING_APPROVAL`, `ACTIVE`, `SYNC_IN_PROGRESS`, `FAILED`.
  final pulumi.Input<String?>? status;
  /// Human-readable explanation of the current status, when available.
  final pulumi.Input<String?>? statusReason;
  final pulumi.Input<SubscriptionTimeouts?>? timeouts;
  /// Usage level within the plan tier. Specify `DEFAULT` for the base configuration, or a higher level if the plan tier supports it. If omitted on an update, the usage level is reset to the plan tier's default.
  final pulumi.Input<String?>? usageLevel;

  /// Creates a new [SubscriptionState].
  /// [approvalMode] Whether the subscription requires explicit approval before billing starts. Valid values: `MANUAL`, `IMMEDIATE`. If not set, AWS defaults to `MANUAL` for paid-tier subscriptions and `IMMEDIATE` for `FREE` tier subscriptions. With `MANUAL`, paid-tier subscriptions remain in `PENDING_APPROVAL` (unbilled, and unmodifiable) until approved with a separate `ApprovePaidSubscription` API call. This value is used only at creation time and is not returned by the AWS API. Changing this argument creates a new resource.
  /// [arn] ARN of the subscription.
  /// [etag] Entity tag of the subscription, used by AWS for optimistic concurrency control.
  /// [planFamily] Pricing plan family to subscribe to, such as `CloudFront`. Changing this argument creates a new resource.
  /// [planTier] Tier level for the subscription, such as `FREE`, `PRO`, `BUSINESS`, or `PREMIUM`. Upgrades take effect immediately. Downgrades are scheduled by AWS to take effect at the end of the current billing period: until then AWS keeps billing the old tier and this argument reflects the desired (scheduled) tier, with the pending change exposed in `scheduledChange`. Raising the tier again before the downgrade takes effect reverts the pending change.
  /// [resourceArns] Set of ARNs of the AWS resources to include in the subscription, between 1 and 10 entries. For subscriptions in the `CloudFront` plan family, the resources must include exactly one CloudFront distribution and exactly one WAF web ACL, and can also include other supported resources such as Route 53 hosted zones (any tier) and CloudFront KeyValueStores (paid tiers only). Associated resources are protected by AWS while covered — for example, a hosted zone cannot be deleted until it is disassociated from the plan.
  /// [scheduledChanges] Pending change that takes effect at the end of the current billing period, if any. See `scheduledChange` below.
  /// [status] Current status of the subscription. Valid values: `PENDING_APPROVAL`, `ACTIVE`, `SYNC_IN_PROGRESS`, `FAILED`.
  /// [statusReason] Human-readable explanation of the current status, when available.
  /// [timeouts] Optional.
  /// [usageLevel] Usage level within the plan tier. Specify `DEFAULT` for the base configuration, or a higher level if the plan tier supports it. If omitted on an update, the usage level is reset to the plan tier's default.
  const SubscriptionState({
    this.approvalMode,
    this.arn,
    this.etag,
    this.planFamily,
    this.planTier,
    this.resourceArns,
    this.scheduledChanges,
    this.status,
    this.statusReason,
    this.timeouts,
    this.usageLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalMode': ?approvalMode,
      'arn': ?arn,
      'etag': ?etag,
      'planFamily': ?planFamily,
      'planTier': ?planTier,
      'resourceArns': ?resourceArns,
      'scheduledChanges': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionScheduledChange>, List<Map<String, dynamic>>>(scheduledChanges, (value) => pulumi.Input.encodeList<SubscriptionScheduledChange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'statusReason': ?statusReason,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SubscriptionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'usageLevel': ?usageLevel,
    };
  }

  factory SubscriptionState.fromMap(Map<String, dynamic> map) {
    return SubscriptionState(
      approvalMode: (() { final guardedValue = map['approvalMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planFamily: (() { final guardedValue = map['planFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planTier: (() { final guardedValue = map['planTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArns: (() { final guardedValue = map['resourceArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scheduledChanges: (() { final guardedValue = map['scheduledChanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriptionScheduledChange>(guardedValue, (value) => SubscriptionScheduledChange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      usageLevel: (() { final guardedValue = map['usageLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
