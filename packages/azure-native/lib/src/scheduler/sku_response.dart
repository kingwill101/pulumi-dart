// ignore_for_file: unused_element, unnecessary_cast


class SkuResponse {
  /// Gets or set the SKU.
  final String? name;

  /// Creates a new [SkuResponse].
  /// [name] Gets or set the SKU.
  SkuResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

