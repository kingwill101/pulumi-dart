// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetModelAgreementOffersOfferTermDetailUsageBasedPricingTermRateCard {
  /// Description of the price rate.
  final pulumi.Input<String> description;
  /// Dimension for the price rate.
  final pulumi.Input<String> dimension;
  /// Single-dimensional rate information.
  final pulumi.Input<String> price;
  /// Unit associated with the price.
  final pulumi.Input<String> unit;

  /// Creates a new [GetModelAgreementOffersOfferTermDetailUsageBasedPricingTermRateCard].
  /// [description] Description of the price rate.
  /// [dimension] Dimension for the price rate.
  /// [price] Single-dimensional rate information.
  /// [unit] Unit associated with the price.
  const GetModelAgreementOffersOfferTermDetailUsageBasedPricingTermRateCard({
    required this.description,
    required this.dimension,
    required this.price,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'dimension': dimension,
      'price': price,
      'unit': unit,
    };
  }

  factory GetModelAgreementOffersOfferTermDetailUsageBasedPricingTermRateCard.fromMap(Map<String, dynamic> map) {
    return GetModelAgreementOffersOfferTermDetailUsageBasedPricingTermRateCard(
      description: pulumi.Input.fromValue(map['description'] as String),
      dimension: pulumi.Input.fromValue(map['dimension'] as String),
      price: pulumi.Input.fromValue(map['price'] as String),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}
