// ignore_for_file: unused_element, unnecessary_cast


/// Used for establishing the purchase context of any 3rd Party artifact through MarketPlace.
class DiskPurchasePlan {
  /// The plan ID.
  final String name;
  /// Specifies the product of the image from the marketplace. This is the same value as Offer under the imageReference element.
  final String product;
  /// The Offer Promotion Code.
  final String? promotionCode;
  /// The publisher ID.
  final String publisher;

  /// Creates a new [DiskPurchasePlan].
  /// [name] The plan ID.
  /// [product] Specifies the product of the image from the marketplace. This is the same value as Offer under the imageReference element.
  /// [promotionCode] The Offer Promotion Code.
  /// [publisher] The publisher ID.
  DiskPurchasePlan({
    required this.name,
    required this.product,
    this.promotionCode,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'promotionCode': ?promotionCode,
      'publisher': publisher,
    };
  }

  factory DiskPurchasePlan.fromMap(Map<String, dynamic> map) {
    return DiskPurchasePlan(
      name: map['name'] as String,
      product: map['product'] as String,
      promotionCode: map['promotionCode'] == null ? null : map['promotionCode'] as String,
      publisher: map['publisher'] as String,
    );
  }
}

