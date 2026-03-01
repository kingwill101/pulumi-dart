// ignore_for_file: unused_element, unnecessary_cast


/// Additional properties of the product
class ProductPropertiesResponse {
  /// The version.
  final String? version;

  /// Creates a new [ProductPropertiesResponse].
  /// [version] The version.
  ProductPropertiesResponse({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory ProductPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProductPropertiesResponse(
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

