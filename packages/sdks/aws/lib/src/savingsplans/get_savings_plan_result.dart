// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSavingsPlan.
class GetSavingsPlanResult {
  /// The hourly commitment amount.
  final String? commitment;
  /// The currency of the Savings Plan.
  final String? currency;
  final String? description;
  /// The EC2 instance family for the Savings Plan.
  final String? ec2InstanceFamily;
  /// The end time of the Savings Plan.
  final String? end;
  /// The ID of the offering.
  final String? offeringId;
  /// The payment option for the Savings Plan.
  final String? paymentOption;
  final List<String>? productTypes;
  final String? purchaseTime;
  /// The recurring payment amount.
  final String? recurringPaymentAmount;
  /// The AWS Region.
  final String? region;
  final String? returnableUntil;
  /// The ARN of the Savings Plan.
  final String? savingsPlanArn;
  final String? savingsPlanId;
  final String? savingsPlanOfferingId;
  /// The type of Savings Plan.
  final String? savingsPlanType;
  /// The start time of the Savings Plan.
  final String? start;
  /// The current state of the Savings Plan.
  final String? state;
  /// A map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// The duration of the term, in seconds.
  final int? termDurationInSeconds;
  /// The up-front payment amount.
  final String? upfrontPaymentAmount;

  /// Creates a new [GetSavingsPlanResult].
  /// [commitment] The hourly commitment amount.
  /// [currency] The currency of the Savings Plan.
  /// [description] Optional.
  /// [ec2InstanceFamily] The EC2 instance family for the Savings Plan.
  /// [end] The end time of the Savings Plan.
  /// [offeringId] The ID of the offering.
  /// [paymentOption] The payment option for the Savings Plan.
  /// [productTypes] Optional.
  /// [purchaseTime] Optional.
  /// [recurringPaymentAmount] The recurring payment amount.
  /// [region] The AWS Region.
  /// [returnableUntil] Optional.
  /// [savingsPlanArn] The ARN of the Savings Plan.
  /// [savingsPlanId] Optional.
  /// [savingsPlanOfferingId] Optional.
  /// [savingsPlanType] The type of Savings Plan.
  /// [start] The start time of the Savings Plan.
  /// [state] The current state of the Savings Plan.
  /// [tags] A map of tags assigned to the resource.
  /// [termDurationInSeconds] The duration of the term, in seconds.
  /// [upfrontPaymentAmount] The up-front payment amount.
  const GetSavingsPlanResult({
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
    this.termDurationInSeconds,
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
      'termDurationInSeconds': ?termDurationInSeconds,
      'upfrontPaymentAmount': ?upfrontPaymentAmount,
    };
  }

  factory GetSavingsPlanResult.fromMap(Map<String, dynamic> map) {
    return GetSavingsPlanResult(
      commitment: (() { final guardedValue = map['commitment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ec2InstanceFamily: (() { final guardedValue = map['ec2InstanceFamily']; if (guardedValue == null) return null; return guardedValue as String; })(),
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offeringId: (() { final guardedValue = map['offeringId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      paymentOption: (() { final guardedValue = map['paymentOption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productTypes: (() { final guardedValue = map['productTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      purchaseTime: (() { final guardedValue = map['purchaseTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recurringPaymentAmount: (() { final guardedValue = map['recurringPaymentAmount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      returnableUntil: (() { final guardedValue = map['returnableUntil']; if (guardedValue == null) return null; return guardedValue as String; })(),
      savingsPlanArn: (() { final guardedValue = map['savingsPlanArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      savingsPlanId: (() { final guardedValue = map['savingsPlanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      savingsPlanOfferingId: (() { final guardedValue = map['savingsPlanOfferingId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      savingsPlanType: (() { final guardedValue = map['savingsPlanType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      termDurationInSeconds: (() { final guardedValue = map['termDurationInSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      upfrontPaymentAmount: (() { final guardedValue = map['upfrontPaymentAmount']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
