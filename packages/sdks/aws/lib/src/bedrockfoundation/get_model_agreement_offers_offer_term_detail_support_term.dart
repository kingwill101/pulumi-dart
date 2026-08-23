// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetModelAgreementOffersOfferTermDetailSupportTerm {
  /// Refund policy description.
  final pulumi.Input<String> refundPolicyDescription;

  /// Creates a new [GetModelAgreementOffersOfferTermDetailSupportTerm].
  /// [refundPolicyDescription] Refund policy description.
  const GetModelAgreementOffersOfferTermDetailSupportTerm({
    required this.refundPolicyDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'refundPolicyDescription': refundPolicyDescription,
    };
  }

  factory GetModelAgreementOffersOfferTermDetailSupportTerm.fromMap(Map<String, dynamic> map) {
    return GetModelAgreementOffersOfferTermDetailSupportTerm(
      refundPolicyDescription: pulumi.Input.fromValue(map['refundPolicyDescription'] as String),
    );
  }
}
