// ignore_for_file: unused_element, unnecessary_cast


/// The resource model definition representing SKU
class SkuResponse {
  /// The name of the Azure Health Bot SKU
  final String name;

  /// Creates a new [SkuResponse].
  /// [name] The name of the Azure Health Bot SKU
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

