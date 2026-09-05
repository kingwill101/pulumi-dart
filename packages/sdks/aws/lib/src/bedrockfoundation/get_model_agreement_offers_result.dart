// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_agreement_offers_offer.dart';

/// Result data returned by getModelAgreementOffers.
class GetModelAgreementOffersResult {
  final String? modelId;
  final String? offerType;
  /// List of the offers associated with the specified model. See `offers`.
  final List<GetModelAgreementOffersOffer>? offers;
  final String? region;

  /// Creates a new [GetModelAgreementOffersResult].
  /// [modelId] Optional.
  /// [offerType] Optional.
  /// [offers] List of the offers associated with the specified model. See `offers`.
  /// [region] Optional.
  const GetModelAgreementOffersResult({
    this.modelId,
    this.offerType,
    this.offers,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': ?modelId,
      'offerType': ?offerType,
      'offers': ?(() { final guardedValue = offers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetModelAgreementOffersOffer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetModelAgreementOffersResult.fromMap(Map<String, dynamic> map) {
    return GetModelAgreementOffersResult(
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offerType: (() { final guardedValue = map['offerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offers: (() { final guardedValue = map['offers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetModelAgreementOffersOffer>(guardedValue, (value) => GetModelAgreementOffersOffer.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
