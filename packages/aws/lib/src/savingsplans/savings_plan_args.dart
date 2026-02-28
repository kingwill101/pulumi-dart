// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'savings_plan_timeouts.dart';

/// {@template pulumi_savingsplans_savings_plan_savings_plan_args_doc}
/// The set of arguments for SavingsPlan.
/// {@endtemplate}
/// {@macro pulumi_savingsplans_savings_plan_savings_plan_args_doc}
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

  /// Creates a new [SavingsPlanArgs].
  /// [commitment] The hourly commitment, in USD. This is the amount you commit to pay per hour, regardless of actual usage.
  /// [purchaseTime] The time at which to purchase the Savings Plan, in UTC format (YYYY-MM-DDTHH:MM:SSZ). If not specified, the plan is purchased immediately. Plans with a future purchase time are placed in `queued` state and can be deleted before they become active.
  /// [savingsPlanOfferingId] The unique ID of a Savings Plan offering. You can find available offerings using the `aws savingsplans describe-savings-plans-offerings` CLI command.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [upfrontPaymentAmount] The up-front payment amount.
  SavingsPlanArgs({
    required String commitment,
    String? purchaseTime,
    required String savingsPlanOfferingId,
    Map<String, String>? tags,
    SavingsPlanTimeouts? timeouts,
    String? upfrontPaymentAmount,
  }) :
      commitment = pulumi.Input.asInput<String>(commitment),
      purchaseTime = pulumi.Input.asOptionalInput<String>(purchaseTime),
      savingsPlanOfferingId = pulumi.Input.asInput<String>(savingsPlanOfferingId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<SavingsPlanTimeouts>(timeouts),
      upfrontPaymentAmount = pulumi.Input.asOptionalInput<String>(upfrontPaymentAmount);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitment': commitment,
      'purchaseTime': ?purchaseTime,
      'savingsPlanOfferingId': savingsPlanOfferingId,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SavingsPlanTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'upfrontPaymentAmount': ?upfrontPaymentAmount,
    };
  }

  factory SavingsPlanArgs.fromMap(Map<String, dynamic> map) {
    return SavingsPlanArgs(
      commitment: map['commitment'] as String,
      purchaseTime: map['purchaseTime'] == null ? null : map['purchaseTime'] as String,
      savingsPlanOfferingId: map['savingsPlanOfferingId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null ? null : SavingsPlanTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
      upfrontPaymentAmount: map['upfrontPaymentAmount'] == null ? null : map['upfrontPaymentAmount'] as String,
    );
  }
}

