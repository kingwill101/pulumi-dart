// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Marketplace offer details of Agri solution.
class MarketPlaceOfferDetailsResponse {
  /// Publisher Id.
  final pulumi.Input<String> publisherId;

  /// Saas offer Id.
  final pulumi.Input<String> saasOfferId;

  /// Creates a new [MarketPlaceOfferDetailsResponse].
  /// [publisherId] Publisher Id.
  /// [saasOfferId] Saas offer Id.
  MarketPlaceOfferDetailsResponse({
    required this.publisherId,
    required this.saasOfferId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publisherId': publisherId,
      'saasOfferId': saasOfferId,
    };
  }

  factory MarketPlaceOfferDetailsResponse.fromMap(Map<String, dynamic> map) {
    return MarketPlaceOfferDetailsResponse(
      publisherId: pulumi.Input.fromValue(map['publisherId'] as String),
      saasOfferId: pulumi.Input.fromValue(map['saasOfferId'] as String),
    );
  }
}
