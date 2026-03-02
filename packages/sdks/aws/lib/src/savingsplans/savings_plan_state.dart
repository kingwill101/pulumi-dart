// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'savings_plan_timeouts.dart';

/// Input properties used for looking up and filtering SavingsPlan resources.
class SavingsPlanState {
  /// The hourly commitment, in USD. This is the amount you commit to pay per hour, regardless of actual usage.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? commitment;
  /// The currency of the Savings Plan (e.g., `USD`).
  final pulumi.Input<String>? currency;
  /// The description.
  final pulumi.Input<String>? description;
  /// The EC2 instance family for the Savings Plan (only applicable to EC2 Instance Savings Plans).
  final pulumi.Input<String>? ec2InstanceFamily;
  /// The end time of the Savings Plan in RFC3339 format.
  final pulumi.Input<String>? end;
  /// The ID of the offering.
  final pulumi.Input<String>? offeringId;
  /// The payment option for the Savings Plan (e.g., `All Upfront`, `Partial Upfront`, `No Upfront`).
  final pulumi.Input<String>? paymentOption;
  /// The product types.
  final pulumi.Input<List<String>>? productTypes;
  /// The time at which to purchase the Savings Plan, in UTC format (YYYY-MM-DDTHH:MM:SSZ). If not specified, the plan is purchased immediately. Plans with a future purchase time are placed in `queued` state and can be deleted before they become active.
  final pulumi.Input<String>? purchaseTime;
  /// The recurring payment amount.
  final pulumi.Input<String>? recurringPaymentAmount;
  /// The AWS Region.
  final pulumi.Input<String>? region;
  /// The recurring payment amount.
  final pulumi.Input<String>? returnableUntil;
  /// The ARN of the Savings Plan.
  final pulumi.Input<String>? savingsPlanArn;
  /// The ID of the Savings Plan.
  final pulumi.Input<String>? savingsPlanId;
  /// The unique ID of a Savings Plan offering. You can find available offerings using the `aws savingsplans describe-savings-plans-offerings` CLI command.
  final pulumi.Input<String>? savingsPlanOfferingId;
  /// The type of Savings Plan (e.g., `Compute`, `EC2Instance`).
  final pulumi.Input<String>? savingsPlanType;
  /// The start time of the Savings Plan in RFC3339 format.
  final pulumi.Input<String>? start;
  /// The current state of the Savings Plan (e.g., `active`, `queued`, `retired`).
  final pulumi.Input<String>? state;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The duration of the term, in seconds.
  final pulumi.Input<int>? termDurationInSeconds;
  final pulumi.Input<SavingsPlanTimeouts>? timeouts;
  /// The up-front payment amount.
  final pulumi.Input<String>? upfrontPaymentAmount;

  /// Creates a new [SavingsPlanState].
  /// [commitment] The hourly commitment, in USD. This is the amount you commit to pay per hour, regardless of actual usage.
  /// [currency] The currency of the Savings Plan (e.g., `USD`).
  /// [description] The description.
  /// [ec2InstanceFamily] The EC2 instance family for the Savings Plan (only applicable to EC2 Instance Savings Plans).
  /// [end] The end time of the Savings Plan in RFC3339 format.
  /// [offeringId] The ID of the offering.
  /// [paymentOption] The payment option for the Savings Plan (e.g., `All Upfront`, `Partial Upfront`, `No Upfront`).
  /// [productTypes] The product types.
  /// [purchaseTime] The time at which to purchase the Savings Plan, in UTC format (YYYY-MM-DDTHH:MM:SSZ). If not specified, the plan is purchased immediately. Plans with a future purchase time are placed in `queued` state and can be deleted before they become active.
  /// [recurringPaymentAmount] The recurring payment amount.
  /// [region] The AWS Region.
  /// [returnableUntil] The recurring payment amount.
  /// [savingsPlanArn] The ARN of the Savings Plan.
  /// [savingsPlanId] The ID of the Savings Plan.
  /// [savingsPlanOfferingId] The unique ID of a Savings Plan offering. You can find available offerings using the `aws savingsplans describe-savings-plans-offerings` CLI command.
  /// [savingsPlanType] The type of Savings Plan (e.g., `Compute`, `EC2Instance`).
  /// [start] The start time of the Savings Plan in RFC3339 format.
  /// [state] The current state of the Savings Plan (e.g., `active`, `queued`, `retired`).
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [termDurationInSeconds] The duration of the term, in seconds.
  /// [timeouts] Optional.
  /// [upfrontPaymentAmount] The up-front payment amount.
  SavingsPlanState({
    this.commitment,
    this.currency,
    this.description,
    this.ec2InstanceFamily,
    this.end,
    this.offeringId,
    this.paymentOption,
    this.productTypes,
    this.purchaseTime,
    this.recurringPaymentAmount,
    this.region,
    this.returnableUntil,
    this.savingsPlanArn,
    this.savingsPlanId,
    this.savingsPlanOfferingId,
    this.savingsPlanType,
    this.start,
    this.state,
    this.tags,
    this.tagsAll,
    this.termDurationInSeconds,
    this.timeouts,
    this.upfrontPaymentAmount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitment': ?commitment,
      'currency': ?currency,
      'description': ?description,
      'ec2InstanceFamily': ?ec2InstanceFamily,
      'end': ?end,
      'offeringId': ?offeringId,
      'paymentOption': ?paymentOption,
      'productTypes': ?productTypes,
      'purchaseTime': ?purchaseTime,
      'recurringPaymentAmount': ?recurringPaymentAmount,
      'region': ?region,
      'returnableUntil': ?returnableUntil,
      'savingsPlanArn': ?savingsPlanArn,
      'savingsPlanId': ?savingsPlanId,
      'savingsPlanOfferingId': ?savingsPlanOfferingId,
      'savingsPlanType': ?savingsPlanType,
      'start': ?start,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'termDurationInSeconds': ?termDurationInSeconds,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SavingsPlanTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'upfrontPaymentAmount': ?upfrontPaymentAmount,
    };
  }

  factory SavingsPlanState.fromMap(Map<String, dynamic> map) {
    return SavingsPlanState(
      commitment: map['commitment'] == null ? null : ((map['commitment'] as String).input()).input(),
      currency: map['currency'] == null ? null : ((map['currency'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      ec2InstanceFamily: map['ec2InstanceFamily'] == null ? null : ((map['ec2InstanceFamily'] as String).input()).input(),
      end: map['end'] == null ? null : ((map['end'] as String).input()).input(),
      offeringId: map['offeringId'] == null ? null : ((map['offeringId'] as String).input()).input(),
      paymentOption: map['paymentOption'] == null ? null : ((map['paymentOption'] as String).input()).input(),
      productTypes: map['productTypes'] == null ? null : (((map['productTypes'] as List).cast<String>()).input()).input(),
      purchaseTime: map['purchaseTime'] == null ? null : ((map['purchaseTime'] as String).input()).input(),
      recurringPaymentAmount: map['recurringPaymentAmount'] == null ? null : ((map['recurringPaymentAmount'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      returnableUntil: map['returnableUntil'] == null ? null : ((map['returnableUntil'] as String).input()).input(),
      savingsPlanArn: map['savingsPlanArn'] == null ? null : ((map['savingsPlanArn'] as String).input()).input(),
      savingsPlanId: map['savingsPlanId'] == null ? null : ((map['savingsPlanId'] as String).input()).input(),
      savingsPlanOfferingId: map['savingsPlanOfferingId'] == null ? null : ((map['savingsPlanOfferingId'] as String).input()).input(),
      savingsPlanType: map['savingsPlanType'] == null ? null : ((map['savingsPlanType'] as String).input()).input(),
      start: map['start'] == null ? null : ((map['start'] as String).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      termDurationInSeconds: map['termDurationInSeconds'] == null ? null : ((map['termDurationInSeconds'] as int).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((SavingsPlanTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      upfrontPaymentAmount: map['upfrontPaymentAmount'] == null ? null : ((map['upfrontPaymentAmount'] as String).input()).input(),
    );
  }
}

