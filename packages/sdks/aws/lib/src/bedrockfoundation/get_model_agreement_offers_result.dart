// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_agreement_offers_offer.dart';

/// Result data returned by getModelAgreementOffers.
class GetModelAgreementOffersResult {
  final String modelId;
  final String? offerType;
  /// List of the offers associated with the specified model. See `offers`.
  final List<GetModelAgreementOffersOffer> offers;
  final String region;

  /// Creates a new [GetModelAgreementOffersResult].
  /// [modelId] Required.
  /// [offerType] Optional.
  /// [offers] List of the offers associated with the specified model. See `offers`.
  /// [region] Required.
  const GetModelAgreementOffersResult({
    required this.modelId,
    this.offerType,
    required this.offers,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': modelId,
      'offerType': ?offerType,
      'offers': pulumi.Input.encodeList<GetModelAgreementOffersOffer, Map<String, dynamic>>(offers, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetModelAgreementOffersResult.fromMap(Map<String, dynamic> map) {
    return GetModelAgreementOffersResult(
      modelId: map['modelId'] as String,
      offerType: (() { final guardedValue = map['offerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offers: pulumi.Input.decodeList<GetModelAgreementOffersOffer>(map['offers']!, (value) => GetModelAgreementOffersOffer.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
