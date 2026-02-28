// ignore_for_file: unused_element, unnecessary_cast

/// Product contains information about a product and how to uniquely identify it.
class ProductResponseContaineranalysisV1beta1 {
  /// Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  final String genericUri;

  /// Name of the product.
  final String name;

  /// Creates a new [ProductResponseContaineranalysisV1beta1].
  /// [genericUri] Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  /// [name] Name of the product.
  ProductResponseContaineranalysisV1beta1({
    required this.genericUri,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['genericUri'] = genericUri;
    map['name'] = name;
    return map;
  }

  factory ProductResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ProductResponseContaineranalysisV1beta1(
      genericUri: map['genericUri'] as String,
      name: map['name'] as String,
    );
  }
}
