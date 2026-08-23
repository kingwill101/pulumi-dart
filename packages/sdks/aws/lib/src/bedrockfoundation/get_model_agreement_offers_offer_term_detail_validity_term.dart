// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetModelAgreementOffersOfferTermDetailValidityTerm {
  /// Duration of the agreement.
  final pulumi.Input<String> agreementDuration;

  /// Creates a new [GetModelAgreementOffersOfferTermDetailValidityTerm].
  /// [agreementDuration] Duration of the agreement.
  const GetModelAgreementOffersOfferTermDetailValidityTerm({
    required this.agreementDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreementDuration': agreementDuration,
    };
  }

  factory GetModelAgreementOffersOfferTermDetailValidityTerm.fromMap(Map<String, dynamic> map) {
    return GetModelAgreementOffersOfferTermDetailValidityTerm(
      agreementDuration: pulumi.Input.fromValue(map['agreementDuration'] as String),
    );
  }
}
