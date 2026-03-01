// ignore_for_file: unused_element, unnecessary_cast


/// Details of a Redis Enterprise cluster SKU.
class SkuDetailsResponse {
  /// The name of the SKU.
  final String name;
  /// The cache size in GB.
  final double sizeInGB;

  /// Creates a new [SkuDetailsResponse].
  /// [name] The name of the SKU.
  /// [sizeInGB] The cache size in GB.
  SkuDetailsResponse({
    required this.name,
    required this.sizeInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sizeInGB': sizeInGB,
    };
  }

  factory SkuDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SkuDetailsResponse(
      name: map['name'] as String,
      sizeInGB: map['sizeInGB'] as double,
    );
  }
}

