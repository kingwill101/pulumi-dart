// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../savings_plan_timeouts/savings_plan_timeouts.dart';

/// The set of arguments for SavingsPlan.
class SavingsPlanArgs {
  /// The hourly commitment, in USD. This is the amount you commit to pay per hour, regardless of actual usage.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> commitment;

  /// The time at which to purchase the Savings Plan, in UTC format (YYYY-MM-DDTHH:MM:SSZ). If not specified, the plan is purchased immediately. Plans with a future purchase time are placed in `queued` state and can be deleted before they become active.
  final pulumi.Input<String>? purchaseTime;

  /// The unique ID of a Savings Plan offering. You can find available offerings using the `aws savingsplans describe-savings-plans-offerings` CLI command.
  final pulumi.Input<String> savingsPlanOfferingId;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<SavingsPlanTimeouts>? timeouts;

  /// The up-front payment amount.
  final pulumi.Input<String>? upfrontPaymentAmount;

  SavingsPlanArgs({
    required this.commitment,
    this.purchaseTime,
    required this.savingsPlanOfferingId,
    this.tags,
    this.timeouts,
    this.upfrontPaymentAmount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['commitment'] = commitment;
    final purchaseTimeValue = purchaseTime;
    if (purchaseTimeValue != null) {
      map['purchaseTime'] = purchaseTimeValue;
    }
    map['savingsPlanOfferingId'] = savingsPlanOfferingId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<SavingsPlanTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final upfrontPaymentAmountValue = upfrontPaymentAmount;
    if (upfrontPaymentAmountValue != null) {
      map['upfrontPaymentAmount'] = upfrontPaymentAmountValue;
    }
    return map;
  }

  factory SavingsPlanArgs.fromMap(Map<String, dynamic> map) {
    return SavingsPlanArgs(
      commitment: pulumi.Input.asInput<String>(map['commitment']),
      purchaseTime: pulumi.Input.asOptionalInput<String>(map['purchaseTime']),
      savingsPlanOfferingId:
          pulumi.Input.asInput<String>(map['savingsPlanOfferingId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<SavingsPlanTimeouts>(map['timeouts']),
      upfrontPaymentAmount:
          pulumi.Input.asOptionalInput<String>(map['upfrontPaymentAmount']),
    );
  }
}
