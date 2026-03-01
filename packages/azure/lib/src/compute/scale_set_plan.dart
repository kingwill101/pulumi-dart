// ignore_for_file: unused_element, unnecessary_cast


class ScaleSetPlan {
  /// Specifies the name of the image from the marketplace.
  final String name;
  /// Specifies the product of the image from the marketplace.
  final String product;
  /// Specifies the publisher of the image.
  final String publisher;

  /// Creates a new [ScaleSetPlan].
  /// [name] Specifies the name of the image from the marketplace.
  /// [product] Specifies the product of the image from the marketplace.
  /// [publisher] Specifies the publisher of the image.
  ScaleSetPlan({
    required this.name,
    required this.product,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'publisher': publisher,
    };
  }

  factory ScaleSetPlan.fromMap(Map<String, dynamic> map) {
    return ScaleSetPlan(
      name: map['name'] as String,
      product: map['product'] as String,
      publisher: map['publisher'] as String,
    );
  }
}

