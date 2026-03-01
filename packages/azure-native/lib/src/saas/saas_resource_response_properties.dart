// ignore_for_file: unused_element, unnecessary_cast

import 'saas_properties_response_term.dart';

/// saas properties
class SaasResourceResponseProperties {
  /// Whether the SaaS subscription will auto renew upon term end.
  final bool? autoRenew;
  /// The created date of this resource.
  final String created;
  /// Whether the current term is a Free Trial term
  final bool? isFreeTrial;
  /// The last modifier date if this resource.
  final String? lastModified;
  /// The offer id.
  final String? offerId;
  /// The metadata about the SaaS subscription such as the AzureSubscriptionId and ResourceUri.
  final Map<String, String>? paymentChannelMetadata;
  /// The Payment channel for the SaasSubscription.
  final String? paymentChannelType;
  /// The publisher id.
  final String? publisherId;
  /// The environment in the publisher side for this resource.
  final String? publisherTestEnvironment;
  /// The seat count.
  final double? quantity;
  /// The SaaS resource name.
  final String? saasResourceName;
  /// The saas session id used for dev service migration request.
  final String? saasSessionId;
  /// The saas subscription id used for tenant to subscription level migration request.
  final String? saasSubscriptionId;
  /// The plan id.
  final String? skuId;
  /// The SaaS Subscription Status.
  final String? status;
  /// The current Term object.
  final SaasPropertiesResponseTerm? term;
  /// The current Term id.
  final String? termId;

  /// Creates a new [SaasResourceResponseProperties].
  /// [autoRenew] Whether the SaaS subscription will auto renew upon term end.
  /// [created] The created date of this resource.
  /// [isFreeTrial] Whether the current term is a Free Trial term
  /// [lastModified] The last modifier date if this resource.
  /// [offerId] The offer id.
  /// [paymentChannelMetadata] The metadata about the SaaS subscription such as the AzureSubscriptionId and ResourceUri.
  /// [paymentChannelType] The Payment channel for the SaasSubscription.
  /// [publisherId] The publisher id.
  /// [publisherTestEnvironment] The environment in the publisher side for this resource.
  /// [quantity] The seat count.
  /// [saasResourceName] The SaaS resource name.
  /// [saasSessionId] The saas session id used for dev service migration request.
  /// [saasSubscriptionId] The saas subscription id used for tenant to subscription level migration request.
  /// [skuId] The plan id.
  /// [status] The SaaS Subscription Status.
  /// [term] The current Term object.
  /// [termId] The current Term id.
  SaasResourceResponseProperties({
    this.autoRenew,
    required this.created,
    this.isFreeTrial,
    this.lastModified,
    this.offerId,
    this.paymentChannelMetadata,
    this.paymentChannelType,
    this.publisherId,
    this.publisherTestEnvironment,
    this.quantity,
    this.saasResourceName,
    this.saasSessionId,
    this.saasSubscriptionId,
    this.skuId,
    this.status,
    this.term,
    this.termId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'created': created,
      'isFreeTrial': ?isFreeTrial,
      'lastModified': ?lastModified,
      'offerId': ?offerId,
      'paymentChannelMetadata': ?paymentChannelMetadata,
      'paymentChannelType': ?paymentChannelType,
      'publisherId': ?publisherId,
      'publisherTestEnvironment': ?publisherTestEnvironment,
      'quantity': ?quantity,
      'saasResourceName': ?saasResourceName,
      'saasSessionId': ?saasSessionId,
      'saasSubscriptionId': ?saasSubscriptionId,
      'skuId': ?skuId,
      'status': ?status,
      'term': ?term == null ? null : term!.toMap(),
      'termId': ?termId,
    };
  }

  factory SaasResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return SaasResourceResponseProperties(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      created: map['created'] as String,
      isFreeTrial: map['isFreeTrial'] == null ? null : map['isFreeTrial'] as bool,
      lastModified: map['lastModified'] == null ? null : map['lastModified'] as String,
      offerId: map['offerId'] == null ? null : map['offerId'] as String,
      paymentChannelMetadata: map['paymentChannelMetadata'] == null ? null : (map['paymentChannelMetadata'] as Map).cast<String, String>(),
      paymentChannelType: map['paymentChannelType'] == null ? null : map['paymentChannelType'] as String,
      publisherId: map['publisherId'] == null ? null : map['publisherId'] as String,
      publisherTestEnvironment: map['publisherTestEnvironment'] == null ? null : map['publisherTestEnvironment'] as String,
      quantity: map['quantity'] == null ? null : map['quantity'] as double,
      saasResourceName: map['saasResourceName'] == null ? null : map['saasResourceName'] as String,
      saasSessionId: map['saasSessionId'] == null ? null : map['saasSessionId'] as String,
      saasSubscriptionId: map['saasSubscriptionId'] == null ? null : map['saasSubscriptionId'] as String,
      skuId: map['skuId'] == null ? null : map['skuId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      term: map['term'] == null ? null : SaasPropertiesResponseTerm.fromMap((map['term'] as Map).cast<String, dynamic>()),
      termId: map['termId'] == null ? null : map['termId'] as String,
    );
  }
}

