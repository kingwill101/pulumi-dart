// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSavingsPlan.
class GetSavingsPlanResult {
  /// The hourly commitment amount.
  final String commitment;

  /// The currency of the Savings Plan.
  final String currency;
  final String description;

  /// The EC2 instance family for the Savings Plan.
  final String ec2InstanceFamily;

  /// The end time of the Savings Plan.
  final String end;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The ID of the offering.
  final String offeringId;

  /// The payment option for the Savings Plan.
  final String paymentOption;
  final List<String> productTypes;
  final String purchaseTime;

  /// The recurring payment amount.
  final String recurringPaymentAmount;

  /// The AWS Region.
  final String region;
  final String returnableUntil;

  /// The ARN of the Savings Plan.
  final String savingsPlanArn;
  final String savingsPlanId;
  final String savingsPlanOfferingId;

  /// The type of Savings Plan.
  final String savingsPlanType;

  /// The start time of the Savings Plan.
  final String start;

  /// The current state of the Savings Plan.
  final String state;

  /// A map of tags assigned to the resource.
  final Map<String, String> tags;

  /// The duration of the term, in seconds.
  final int termDurationInSeconds;

  /// The up-front payment amount.
  final String upfrontPaymentAmount;

  /// Creates a new [GetSavingsPlanResult].
  /// [commitment] The hourly commitment amount.
  /// [currency] The currency of the Savings Plan.
  /// [description] Required.
  /// [ec2InstanceFamily] The EC2 instance family for the Savings Plan.
  /// [end] The end time of the Savings Plan.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [offeringId] The ID of the offering.
  /// [paymentOption] The payment option for the Savings Plan.
  /// [productTypes] Required.
  /// [purchaseTime] Required.
  /// [recurringPaymentAmount] The recurring payment amount.
  /// [region] The AWS Region.
  /// [returnableUntil] Required.
  /// [savingsPlanArn] The ARN of the Savings Plan.
  /// [savingsPlanId] Required.
  /// [savingsPlanOfferingId] Required.
  /// [savingsPlanType] The type of Savings Plan.
  /// [start] The start time of the Savings Plan.
  /// [state] The current state of the Savings Plan.
  /// [tags] A map of tags assigned to the resource.
  /// [termDurationInSeconds] The duration of the term, in seconds.
  /// [upfrontPaymentAmount] The up-front payment amount.
  GetSavingsPlanResult({
    required this.commitment,
    required this.currency,
    required this.description,
    required this.ec2InstanceFamily,
    required this.end,
    required this.id,
    required this.offeringId,
    required this.paymentOption,
    required this.productTypes,
    required this.purchaseTime,
    required this.recurringPaymentAmount,
    required this.region,
    required this.returnableUntil,
    required this.savingsPlanArn,
    required this.savingsPlanId,
    required this.savingsPlanOfferingId,
    required this.savingsPlanType,
    required this.start,
    required this.state,
    required this.tags,
    required this.termDurationInSeconds,
    required this.upfrontPaymentAmount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitment': commitment,
      'currency': currency,
      'description': description,
      'ec2InstanceFamily': ec2InstanceFamily,
      'end': end,
      'id': id,
      'offeringId': offeringId,
      'paymentOption': paymentOption,
      'productTypes': productTypes,
      'purchaseTime': purchaseTime,
      'recurringPaymentAmount': recurringPaymentAmount,
      'region': region,
      'returnableUntil': returnableUntil,
      'savingsPlanArn': savingsPlanArn,
      'savingsPlanId': savingsPlanId,
      'savingsPlanOfferingId': savingsPlanOfferingId,
      'savingsPlanType': savingsPlanType,
      'start': start,
      'state': state,
      'tags': tags,
      'termDurationInSeconds': termDurationInSeconds,
      'upfrontPaymentAmount': upfrontPaymentAmount,
    };
  }

  factory GetSavingsPlanResult.fromMap(Map<String, dynamic> map) {
    return GetSavingsPlanResult(
      commitment: map['commitment'] as String,
      currency: map['currency'] as String,
      description: map['description'] as String,
      ec2InstanceFamily: map['ec2InstanceFamily'] as String,
      end: map['end'] as String,
      id: map['id'] as String,
      offeringId: map['offeringId'] as String,
      paymentOption: map['paymentOption'] as String,
      productTypes: (map['productTypes'] as List).cast<String>(),
      purchaseTime: map['purchaseTime'] as String,
      recurringPaymentAmount: map['recurringPaymentAmount'] as String,
      region: map['region'] as String,
      returnableUntil: map['returnableUntil'] as String,
      savingsPlanArn: map['savingsPlanArn'] as String,
      savingsPlanId: map['savingsPlanId'] as String,
      savingsPlanOfferingId: map['savingsPlanOfferingId'] as String,
      savingsPlanType: map['savingsPlanType'] as String,
      start: map['start'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      termDurationInSeconds: map['termDurationInSeconds'] as int,
      upfrontPaymentAmount: map['upfrontPaymentAmount'] as String,
    );
  }
}
