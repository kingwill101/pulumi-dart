// ignore_for_file: unused_element, unnecessary_cast

/// Defines an object for the byproducts field in in-toto links. The suggested fields are "stderr", "stdout", and "return-value".
class ByProducts {
  final Map<String, String>? customValues;

  /// Creates a new [ByProducts].
  /// [customValues] Optional.
  ByProducts({this.customValues});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'customValues': ?customValues};
  }

  factory ByProducts.fromMap(Map<String, dynamic> map) {
    return ByProducts(
      customValues: map['customValues'] == null
          ? null
          : (map['customValues'] as Map).cast<String, String>(),
    );
  }
}
