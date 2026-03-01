// ignore_for_file: unused_element, unnecessary_cast


/// SKU details
class SkuResponse {
  /// SKU family name
  final String family;
  /// SKU name to specify whether the key vault is a standard vault or a premium vault.
  final String name;

  /// Creates a new [SkuResponse].
  /// [family] SKU family name
  /// [name] SKU name to specify whether the key vault is a standard vault or a premium vault.
  SkuResponse({
    required this.family,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'name': name,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      family: map['family'] as String,
      name: map['name'] as String,
    );
  }
}

