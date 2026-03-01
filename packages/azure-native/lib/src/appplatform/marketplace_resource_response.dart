// ignore_for_file: unused_element, unnecessary_cast


/// Purchasing 3rd Party product for one Azure Spring Apps instance
class MarketplaceResourceResponse {
  /// The plan id of the 3rd Party Artifact that is being procured.
  final String? plan;
  /// The 3rd Party artifact that is being procured.
  final String? product;
  /// The publisher id of the 3rd Party Artifact that is being bought.
  final String? publisher;

  /// Creates a new [MarketplaceResourceResponse].
  /// [plan] The plan id of the 3rd Party Artifact that is being procured.
  /// [product] The 3rd Party artifact that is being procured.
  /// [publisher] The publisher id of the 3rd Party Artifact that is being bought.
  MarketplaceResourceResponse({
    this.plan,
    this.product,
    this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plan': ?plan,
      'product': ?product,
      'publisher': ?publisher,
    };
  }

  factory MarketplaceResourceResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceResourceResponse(
      plan: map['plan'] == null ? null : map['plan'] as String,
      product: map['product'] == null ? null : map['product'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
    );
  }
}

