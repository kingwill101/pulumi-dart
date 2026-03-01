// ignore_for_file: unused_element, unnecessary_cast


class ResourceSkuResponse {
  final String name;

  /// Creates a new [ResourceSkuResponse].
  /// [name] Required.
  ResourceSkuResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ResourceSkuResponse.fromMap(Map<String, dynamic> map) {
    return ResourceSkuResponse(
      name: map['name'] as String,
    );
  }
}

