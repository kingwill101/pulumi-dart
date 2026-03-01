// ignore_for_file: unused_element, unnecessary_cast


/// The SKU of the EnterpriseKnowledgeGraph service account.
class SkuResponse {
  /// The sku name
  final String name;

  /// Creates a new [SkuResponse].
  /// [name] The sku name
  SkuResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: map['name'] as String,
    );
  }
}

