// ignore_for_file: unused_element, unnecessary_cast


/// SKU of the dedicated HSM
class SkuResponse {
  /// SKU of the dedicated HSM
  final String? name;

  /// Creates a new [SkuResponse].
  /// [name] SKU of the dedicated HSM
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

