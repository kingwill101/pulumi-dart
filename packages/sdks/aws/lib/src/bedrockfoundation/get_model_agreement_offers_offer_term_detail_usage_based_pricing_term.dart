// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_agreement_offers_offer_term_detail_usage_based_pricing_term_rate_card.dart';

class GetModelAgreementOffersOfferTermDetailUsageBasedPricingTerm {
  /// Details about a usage price for each dimension. See `rateCard`.
  final pulumi.Input<List<GetModelAgreementOffersOfferTermDetailUsageBasedPricingTermRateCard>> rateCards;

  /// Creates a new [GetModelAgreementOffersOfferTermDetailUsageBasedPricingTerm].
  /// [rateCards] Details about a usage price for each dimension. See `rateCard`.
  const GetModelAgreementOffersOfferTermDetailUsageBasedPricingTerm({
    required this.rateCards,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rateCards': pulumi.Input.mapInputValue<List<GetModelAgreementOffersOfferTermDetailUsageBasedPricingTermRateCard>, List<Map<String, dynamic>>>(rateCards, (value) => pulumi.Input.encodeList<GetModelAgreementOffersOfferTermDetailUsageBasedPricingTermRateCard, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetModelAgreementOffersOfferTermDetailUsageBasedPricingTerm.fromMap(Map<String, dynamic> map) {
    return GetModelAgreementOffersOfferTermDetailUsageBasedPricingTerm(
      rateCards: pulumi.Input.fromValue(pulumi.Input.decodeList<GetModelAgreementOffersOfferTermDetailUsageBasedPricingTermRateCard>(map['rateCards']!, (value) => GetModelAgreementOffersOfferTermDetailUsageBasedPricingTermRateCard.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
