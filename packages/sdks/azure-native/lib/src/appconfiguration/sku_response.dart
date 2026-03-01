// ignore_for_file: unused_element, unnecessary_cast


/// Describes a configuration store SKU.
class SkuResponse {
  /// The SKU name of the configuration store.
  final String name;

  /// Creates a new [SkuResponse].
  /// [name] The SKU name of the configuration store.
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

