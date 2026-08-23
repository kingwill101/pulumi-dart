// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetModelAgreementOffersOfferTermDetailLegalTerm {
  /// URL to the legal term document.
  final pulumi.Input<String> url;

  /// Creates a new [GetModelAgreementOffersOfferTermDetailLegalTerm].
  /// [url] URL to the legal term document.
  const GetModelAgreementOffersOfferTermDetailLegalTerm({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory GetModelAgreementOffersOfferTermDetailLegalTerm.fromMap(Map<String, dynamic> map) {
    return GetModelAgreementOffersOfferTermDetailLegalTerm(
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
