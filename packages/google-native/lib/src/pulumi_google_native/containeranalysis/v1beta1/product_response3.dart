// ignore_for_file: unused_element, unnecessary_cast

/// Product contains information about a product and how to uniquely identify it.
class ProductResponse3 {
  /// Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  final String genericUri;

  /// Name of the product.
  final String name;

  ProductResponse3({
    required this.genericUri,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['genericUri'] = genericUri;
    map['name'] = name;
    return map;
  }

  factory ProductResponse3.fromMap(Map<String, dynamic> map) {
    return ProductResponse3(
      genericUri: map['genericUri'] as String,
      name: map['name'] as String,
    );
  }
}
