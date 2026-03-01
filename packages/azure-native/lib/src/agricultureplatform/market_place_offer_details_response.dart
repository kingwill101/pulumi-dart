// ignore_for_file: unused_element, unnecessary_cast


/// Marketplace offer details of Agri solution.
class MarketPlaceOfferDetailsResponse {
  /// Publisher Id.
  final String publisherId;
  /// Saas offer Id.
  final String saasOfferId;

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
      publisherId: map['publisherId'] as String,
      saasOfferId: map['saasOfferId'] as String,
    );
  }
}

