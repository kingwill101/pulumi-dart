// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_agreement_offers_offer_term_detail.dart';

class GetModelAgreementOffersOffer {
  /// Offer ID for a model offer.
  final pulumi.Input<String> offerId;
  /// Offer token.
  final pulumi.Input<String> offerToken;
  /// Details about the terms of the offer. See `termDetails`.
  final pulumi.Input<List<GetModelAgreementOffersOfferTermDetail>> termDetails;

  /// Creates a new [GetModelAgreementOffersOffer].
  /// [offerId] Offer ID for a model offer.
  /// [offerToken] Offer token.
  /// [termDetails] Details about the terms of the offer. See `termDetails`.
  const GetModelAgreementOffersOffer({
    required this.offerId,
    required this.offerToken,
    required this.termDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerId': offerId,
      'offerToken': offerToken,
      'termDetails': pulumi.Input.mapInputValue<List<GetModelAgreementOffersOfferTermDetail>, List<Map<String, dynamic>>>(termDetails, (value) => pulumi.Input.encodeList<GetModelAgreementOffersOfferTermDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetModelAgreementOffersOffer.fromMap(Map<String, dynamic> map) {
    return GetModelAgreementOffersOffer(
      offerId: pulumi.Input.fromValue(map['offerId'] as String),
      offerToken: pulumi.Input.fromValue(map['offerToken'] as String),
      termDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetModelAgreementOffersOfferTermDetail>(map['termDetails']!, (value) => GetModelAgreementOffersOfferTermDetail.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
