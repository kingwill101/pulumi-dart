// ignore_for_file: unused_element, unnecessary_cast

import 'professional_service_properties_response_term.dart';

/// professionalService properties
class ProfessionalServiceResourceResponseProperties {
  /// Whether the ProfessionalService subscription will auto renew upon term end.
  final bool? autoRenew;
  /// The billing period eg P1M,P1Y for monthly,yearly respectively
  final String? billingPeriod;
  /// The created date of this resource.
  final String created;
  /// Whether the current term is a Free Trial term
  final bool? isFreeTrial;
  /// The last modifier date if this resource.
  final String? lastModified;
  /// The offer id.
  final String? offerId;
  /// The metadata about the ProfessionalService subscription such as the AzureSubscriptionId and ResourceUri.
  final Map<String, String>? paymentChannelMetadata;
  /// The Payment channel for the ProfessionalServiceSubscription.
  final String? paymentChannelType;
  /// The publisher id.
  final String? publisherId;
  /// The quote id which the ProfessionalService will be purchase with.
  final String? quoteId;
  /// The plan id.
  final String? skuId;
  /// The ProfessionalService Subscription Status.
  final String? status;
  /// The store front which initiates the purchase.
  final String? storeFront;
  /// The current Term object.
  final ProfessionalServicePropertiesResponseTerm? term;
  /// The unit term eg P1M,P1Y,P2Y,P3Y meaning month,1year,2year,3year respectively
  final String? termUnit;

  /// Creates a new [ProfessionalServiceResourceResponseProperties].
  /// [autoRenew] Whether the ProfessionalService subscription will auto renew upon term end.
  /// [billingPeriod] The billing period eg P1M,P1Y for monthly,yearly respectively
  /// [created] The created date of this resource.
  /// [isFreeTrial] Whether the current term is a Free Trial term
  /// [lastModified] The last modifier date if this resource.
  /// [offerId] The offer id.
  /// [paymentChannelMetadata] The metadata about the ProfessionalService subscription such as the AzureSubscriptionId and ResourceUri.
  /// [paymentChannelType] The Payment channel for the ProfessionalServiceSubscription.
  /// [publisherId] The publisher id.
  /// [quoteId] The quote id which the ProfessionalService will be purchase with.
  /// [skuId] The plan id.
  /// [status] The ProfessionalService Subscription Status.
  /// [storeFront] The store front which initiates the purchase.
  /// [term] The current Term object.
  /// [termUnit] The unit term eg P1M,P1Y,P2Y,P3Y meaning month,1year,2year,3year respectively
  ProfessionalServiceResourceResponseProperties({
    this.autoRenew,
    this.billingPeriod,
    required this.created,
    this.isFreeTrial,
    this.lastModified,
    this.offerId,
    this.paymentChannelMetadata,
    this.paymentChannelType,
    this.publisherId,
    this.quoteId,
    this.skuId,
    this.status,
    this.storeFront,
    this.term,
    this.termUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'billingPeriod': ?billingPeriod,
      'created': created,
      'isFreeTrial': ?isFreeTrial,
      'lastModified': ?lastModified,
      'offerId': ?offerId,
      'paymentChannelMetadata': ?paymentChannelMetadata,
      'paymentChannelType': ?paymentChannelType,
      'publisherId': ?publisherId,
      'quoteId': ?quoteId,
      'skuId': ?skuId,
      'status': ?status,
      'storeFront': ?storeFront,
      'term': ?term == null ? null : term!.toMap(),
      'termUnit': ?termUnit,
    };
  }

  factory ProfessionalServiceResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return ProfessionalServiceResourceResponseProperties(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      billingPeriod: map['billingPeriod'] == null ? null : map['billingPeriod'] as String,
      created: map['created'] as String,
      isFreeTrial: map['isFreeTrial'] == null ? null : map['isFreeTrial'] as bool,
      lastModified: map['lastModified'] == null ? null : map['lastModified'] as String,
      offerId: map['offerId'] == null ? null : map['offerId'] as String,
      paymentChannelMetadata: map['paymentChannelMetadata'] == null ? null : (map['paymentChannelMetadata'] as Map).cast<String, String>(),
      paymentChannelType: map['paymentChannelType'] == null ? null : map['paymentChannelType'] as String,
      publisherId: map['publisherId'] == null ? null : map['publisherId'] as String,
      quoteId: map['quoteId'] == null ? null : map['quoteId'] as String,
      skuId: map['skuId'] == null ? null : map['skuId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      storeFront: map['storeFront'] == null ? null : map['storeFront'] as String,
      term: map['term'] == null ? null : ProfessionalServicePropertiesResponseTerm.fromMap((map['term'] as Map).cast<String, dynamic>()),
      termUnit: map['termUnit'] == null ? null : map['termUnit'] as String,
    );
  }
}

