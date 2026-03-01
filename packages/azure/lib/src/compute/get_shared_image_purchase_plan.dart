// ignore_for_file: unused_element, unnecessary_cast


class GetSharedImagePurchasePlan {
  /// The name of the Shared Image.
  final String name;
  /// (Optional) The Purchase Plan Product for this Gallery Image.
  final String product;
  /// (Optional) The Purchase Plan Publisher for this Gallery Image.
  final String publisher;

  /// Creates a new [GetSharedImagePurchasePlan].
  /// [name] The name of the Shared Image.
  /// [product] (Optional) The Purchase Plan Product for this Gallery Image.
  /// [publisher] (Optional) The Purchase Plan Publisher for this Gallery Image.
  GetSharedImagePurchasePlan({
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

  factory GetSharedImagePurchasePlan.fromMap(Map<String, dynamic> map) {
    return GetSharedImagePurchasePlan(
      name: map['name'] as String,
      product: map['product'] as String,
      publisher: map['publisher'] as String,
    );
  }
}

