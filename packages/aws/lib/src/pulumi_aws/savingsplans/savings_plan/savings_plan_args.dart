// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../savings_plan_timeouts/savings_plan_timeouts.dart';

/// The set of arguments for SavingsPlan.
class SavingsPlanArgs {
  /// The hourly commitment, in USD. This is the amount you commit to pay per hour, regardless of actual usage.
  ///
  /// The following arguments are optional:
  final Input<String> commitment;

  /// The time at which to purchase the Savings Plan, in UTC format (YYYY-MM-DDTHH:MM:SSZ). If not specified, the plan is purchased immediately. Plans with a future purchase time are placed in <span pulumi-lang-nodejs="`queued`" pulumi-lang-dotnet="`Queued`" pulumi-lang-go="`queued`" pulumi-lang-python="`queued`" pulumi-lang-yaml="`queued`" pulumi-lang-java="`queued`">`queued`</span> state and can be deleted before they become active.
  final Input<String>? purchaseTime;

  /// The unique ID of a Savings Plan offering. You can find available offerings using the `aws savingsplans describe-savings-plans-offerings` CLI command.
  final Input<String> savingsPlanOfferingId;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<SavingsPlanTimeouts>? timeouts;

  /// The up-front payment amount.
  final Input<String>? upfrontPaymentAmount;

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
      map['timeouts'] = Input.mapOptionalInputValue<SavingsPlanTimeouts,
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
      commitment: Input.asInput<String>(map['commitment']),
      purchaseTime: Input.asOptionalInput<String>(map['purchaseTime']),
      savingsPlanOfferingId:
          Input.asInput<String>(map['savingsPlanOfferingId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<SavingsPlanTimeouts>(map['timeouts']),
      upfrontPaymentAmount:
          Input.asOptionalInput<String>(map['upfrontPaymentAmount']),
    );
  }
}
