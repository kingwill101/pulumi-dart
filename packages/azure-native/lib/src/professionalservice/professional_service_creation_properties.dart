// ignore_for_file: unused_element, unnecessary_cast


/// properties for creation professionalService
class ProfessionalServiceCreationProperties {
  /// Whether the ProfessionalService subscription will auto renew upon term end.
  final bool? autoRenew;
  /// The billing period eg P1M,P1Y for monthly,yearly respectively
  final String? billingPeriod;
  /// The offer id.
  final String? offerId;
  /// The publisher id.
  final String? publisherId;
  /// The quote id which the ProfessionalService will be purchase with.
  final String? quoteId;
  /// The plan id.
  final String? skuId;
  /// The store front which initiates the purchase.
  final String? storeFront;
  /// The unit term eg P1M,P1Y,P2Y,P3Y meaning month,1year,2year,3year respectively
  final String? termUnit;

  /// Creates a new [ProfessionalServiceCreationProperties].
  /// [autoRenew] Whether the ProfessionalService subscription will auto renew upon term end.
  /// [billingPeriod] The billing period eg P1M,P1Y for monthly,yearly respectively
  /// [offerId] The offer id.
  /// [publisherId] The publisher id.
  /// [quoteId] The quote id which the ProfessionalService will be purchase with.
  /// [skuId] The plan id.
  /// [storeFront] The store front which initiates the purchase.
  /// [termUnit] The unit term eg P1M,P1Y,P2Y,P3Y meaning month,1year,2year,3year respectively
  ProfessionalServiceCreationProperties({
    this.autoRenew,
    this.billingPeriod,
    this.offerId,
    this.publisherId,
    this.quoteId,
    this.skuId,
    this.storeFront,
    this.termUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'billingPeriod': ?billingPeriod,
      'offerId': ?offerId,
      'publisherId': ?publisherId,
      'quoteId': ?quoteId,
      'skuId': ?skuId,
      'storeFront': ?storeFront,
      'termUnit': ?termUnit,
    };
  }

  factory ProfessionalServiceCreationProperties.fromMap(Map<String, dynamic> map) {
    return ProfessionalServiceCreationProperties(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      billingPeriod: map['billingPeriod'] == null ? null : map['billingPeriod'] as String,
      offerId: map['offerId'] == null ? null : map['offerId'] as String,
      publisherId: map['publisherId'] == null ? null : map['publisherId'] as String,
      quoteId: map['quoteId'] == null ? null : map['quoteId'] as String,
      skuId: map['skuId'] == null ? null : map['skuId'] as String,
      storeFront: map['storeFront'] == null ? null : map['storeFront'] as String,
      termUnit: map['termUnit'] == null ? null : map['termUnit'] as String,
    );
  }
}

