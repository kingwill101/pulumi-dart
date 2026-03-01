// ignore_for_file: unused_element, unnecessary_cast


/// Describes the gallery image definition purchase plan. This is used by marketplace images.
class ImagePurchasePlanResponse {
  /// The plan ID.
  final String? name;
  /// The product ID.
  final String? product;
  /// The publisher ID.
  final String? publisher;

  /// Creates a new [ImagePurchasePlanResponse].
  /// [name] The plan ID.
  /// [product] The product ID.
  /// [publisher] The publisher ID.
  ImagePurchasePlanResponse({
    this.name,
    this.product,
    this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'product': ?product,
      'publisher': ?publisher,
    };
  }

  factory ImagePurchasePlanResponse.fromMap(Map<String, dynamic> map) {
    return ImagePurchasePlanResponse(
      name: map['name'] == null ? null : map['name'] as String,
      product: map['product'] == null ? null : map['product'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
    );
  }
}

