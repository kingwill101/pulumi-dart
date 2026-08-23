// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_agreement_offers_offer_term_detail_legal_term.dart';
import 'get_model_agreement_offers_offer_term_detail_support_term.dart';
import 'get_model_agreement_offers_offer_term_detail_usage_based_pricing_term.dart';
import 'get_model_agreement_offers_offer_term_detail_validity_term.dart';

class GetModelAgreementOffersOfferTermDetail {
  /// Details about the legal terms. See `legalTerm`.
  final pulumi.Input<List<GetModelAgreementOffersOfferTermDetailLegalTerm>> legalTerms;
  /// Details about the support terms. See `supportTerm`.
  final pulumi.Input<List<GetModelAgreementOffersOfferTermDetailSupportTerm>> supportTerms;
  /// Details about the pricing terms. See `usageBasedPricingTerm`.
  final pulumi.Input<List<GetModelAgreementOffersOfferTermDetailUsageBasedPricingTerm>> usageBasedPricingTerms;
  /// Details about the validity terms. See `validityTerm`.
  final pulumi.Input<List<GetModelAgreementOffersOfferTermDetailValidityTerm>> validityTerms;

  /// Creates a new [GetModelAgreementOffersOfferTermDetail].
  /// [legalTerms] Details about the legal terms. See `legalTerm`.
  /// [supportTerms] Details about the support terms. See `supportTerm`.
  /// [usageBasedPricingTerms] Details about the pricing terms. See `usageBasedPricingTerm`.
  /// [validityTerms] Details about the validity terms. See `validityTerm`.
  const GetModelAgreementOffersOfferTermDetail({
    required this.legalTerms,
    required this.supportTerms,
    required this.usageBasedPricingTerms,
    required this.validityTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'legalTerms': pulumi.Input.mapInputValue<List<GetModelAgreementOffersOfferTermDetailLegalTerm>, List<Map<String, dynamic>>>(legalTerms, (value) => pulumi.Input.encodeList<GetModelAgreementOffersOfferTermDetailLegalTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportTerms': pulumi.Input.mapInputValue<List<GetModelAgreementOffersOfferTermDetailSupportTerm>, List<Map<String, dynamic>>>(supportTerms, (value) => pulumi.Input.encodeList<GetModelAgreementOffersOfferTermDetailSupportTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'usageBasedPricingTerms': pulumi.Input.mapInputValue<List<GetModelAgreementOffersOfferTermDetailUsageBasedPricingTerm>, List<Map<String, dynamic>>>(usageBasedPricingTerms, (value) => pulumi.Input.encodeList<GetModelAgreementOffersOfferTermDetailUsageBasedPricingTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validityTerms': pulumi.Input.mapInputValue<List<GetModelAgreementOffersOfferTermDetailValidityTerm>, List<Map<String, dynamic>>>(validityTerms, (value) => pulumi.Input.encodeList<GetModelAgreementOffersOfferTermDetailValidityTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetModelAgreementOffersOfferTermDetail.fromMap(Map<String, dynamic> map) {
    return GetModelAgreementOffersOfferTermDetail(
      legalTerms: pulumi.Input.fromValue(pulumi.Input.decodeList<GetModelAgreementOffersOfferTermDetailLegalTerm>(map['legalTerms']!, (value) => GetModelAgreementOffersOfferTermDetailLegalTerm.fromMap((value as Map).cast<String, dynamic>()))),
      supportTerms: pulumi.Input.fromValue(pulumi.Input.decodeList<GetModelAgreementOffersOfferTermDetailSupportTerm>(map['supportTerms']!, (value) => GetModelAgreementOffersOfferTermDetailSupportTerm.fromMap((value as Map).cast<String, dynamic>()))),
      usageBasedPricingTerms: pulumi.Input.fromValue(pulumi.Input.decodeList<GetModelAgreementOffersOfferTermDetailUsageBasedPricingTerm>(map['usageBasedPricingTerms']!, (value) => GetModelAgreementOffersOfferTermDetailUsageBasedPricingTerm.fromMap((value as Map).cast<String, dynamic>()))),
      validityTerms: pulumi.Input.fromValue(pulumi.Input.decodeList<GetModelAgreementOffersOfferTermDetailValidityTerm>(map['validityTerms']!, (value) => GetModelAgreementOffersOfferTermDetailValidityTerm.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
