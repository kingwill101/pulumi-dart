// ignore_for_file: unused_element, unnecessary_cast

/// Defines an object for the byproducts field in in-toto links. The suggested fields are "stderr", "stdout", and "return-value".
class ByProductsResponse {
  final Map<String, String> customValues;

  /// Creates a new [ByProductsResponse].
  /// [customValues] Required.
  ByProductsResponse({required this.customValues});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'customValues': customValues};
  }

  factory ByProductsResponse.fromMap(Map<String, dynamic> map) {
    return ByProductsResponse(
      customValues: (map['customValues'] as Map).cast<String, String>(),
    );
  }
}
