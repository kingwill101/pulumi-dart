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
    pulumi.Output<String>? commitment,
    pulumi.Output<String>? currency,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ec2InstanceFamily,
    pulumi.Output<String>? end,
    pulumi.Output<String>? offeringId,
    pulumi.Output<String>? paymentOption,
    pulumi.Output<List<String>>? productTypes,
    pulumi.Output<String>? purchaseTime,
    pulumi.Output<String>? recurringPaymentAmount,
    pulumi.Output<String>? region,
    pulumi.Output<String>? returnableUntil,
    pulumi.Output<String>? savingsPlanArn,
    pulumi.Output<String>? savingsPlanId,
    pulumi.Output<String>? savingsPlanOfferingId,
    pulumi.Output<String>? savingsPlanType,
    pulumi.Output<String>? start,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? termDurationInSeconds,
    pulumi.Output<SavingsPlanTimeouts>? timeouts,
    pulumi.Output<String>? upfrontPaymentAmount,
  }) :
      commitment = pulumi.Input.asOptionalInput<String>(commitment),
      currency = pulumi.Input.asOptionalInput<String>(currency),
      description = pulumi.Input.asOptionalInput<String>(description),
      ec2InstanceFamily = pulumi.Input.asOptionalInput<String>(ec2InstanceFamily),
      end = pulumi.Input.asOptionalInput<String>(end),
      offeringId = pulumi.Input.asOptionalInput<String>(offeringId),
      paymentOption = pulumi.Input.asOptionalInput<String>(paymentOption),
      productTypes = pulumi.Input.asOptionalInput<List<String>>(productTypes),
      purchaseTime = pulumi.Input.asOptionalInput<String>(purchaseTime),
      recurringPaymentAmount = pulumi.Input.asOptionalInput<String>(recurringPaymentAmount),
      region = pulumi.Input.asOptionalInput<String>(region),
      returnableUntil = pulumi.Input.asOptionalInput<String>(returnableUntil),
      savingsPlanArn = pulumi.Input.asOptionalInput<String>(savingsPlanArn),
      savingsPlanId = pulumi.Input.asOptionalInput<String>(savingsPlanId),
      savingsPlanOfferingId = pulumi.Input.asOptionalInput<String>(savingsPlanOfferingId),
      savingsPlanType = pulumi.Input.asOptionalInput<String>(savingsPlanType),
      start = pulumi.Input.asOptionalInput<String>(start),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      termDurationInSeconds = pulumi.Input.asOptionalInput<int>(termDurationInSeconds),
      timeouts = pulumi.Input.asOptionalInput<SavingsPlanTimeouts>(timeouts),
      upfrontPaymentAmount = pulumi.Input.asOptionalInput<String>(upfrontPaymentAmount);

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
      commitment: map['commitment'] == null ? null : pulumi.Output.create<String>(map['commitment'] as String),
      currency: map['currency'] == null ? null : pulumi.Output.create<String>(map['currency'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ec2InstanceFamily: map['ec2InstanceFamily'] == null ? null : pulumi.Output.create<String>(map['ec2InstanceFamily'] as String),
      end: map['end'] == null ? null : pulumi.Output.create<String>(map['end'] as String),
      offeringId: map['offeringId'] == null ? null : pulumi.Output.create<String>(map['offeringId'] as String),
      paymentOption: map['paymentOption'] == null ? null : pulumi.Output.create<String>(map['paymentOption'] as String),
      productTypes: map['productTypes'] == null ? null : pulumi.Output.create<List<String>>((map['productTypes'] as List).cast<String>()),
      purchaseTime: map['purchaseTime'] == null ? null : pulumi.Output.create<String>(map['purchaseTime'] as String),
      recurringPaymentAmount: map['recurringPaymentAmount'] == null ? null : pulumi.Output.create<String>(map['recurringPaymentAmount'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      returnableUntil: map['returnableUntil'] == null ? null : pulumi.Output.create<String>(map['returnableUntil'] as String),
      savingsPlanArn: map['savingsPlanArn'] == null ? null : pulumi.Output.create<String>(map['savingsPlanArn'] as String),
      savingsPlanId: map['savingsPlanId'] == null ? null : pulumi.Output.create<String>(map['savingsPlanId'] as String),
      savingsPlanOfferingId: map['savingsPlanOfferingId'] == null ? null : pulumi.Output.create<String>(map['savingsPlanOfferingId'] as String),
      savingsPlanType: map['savingsPlanType'] == null ? null : pulumi.Output.create<String>(map['savingsPlanType'] as String),
      start: map['start'] == null ? null : pulumi.Output.create<String>(map['start'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      termDurationInSeconds: map['termDurationInSeconds'] == null ? null : pulumi.Output.create<int>(map['termDurationInSeconds'] as int),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<SavingsPlanTimeouts>(SavingsPlanTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      upfrontPaymentAmount: map['upfrontPaymentAmount'] == null ? null : pulumi.Output.create<String>(map['upfrontPaymentAmount'] as String),
    );
  }
}

