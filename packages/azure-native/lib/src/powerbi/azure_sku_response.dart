// ignore_for_file: unused_element, unnecessary_cast


class AzureSkuResponse {
  /// SKU name
  final String name;
  /// SKU tier
  final String tier;

  /// Creates a new [AzureSkuResponse].
  /// [name] SKU name
  /// [tier] SKU tier
  AzureSkuResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory AzureSkuResponse.fromMap(Map<String, dynamic> map) {
    return AzureSkuResponse(
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

