// ignore_for_file: unused_element, unnecessary_cast


class ResourceSku {
  final String name;

  /// Creates a new [ResourceSku].
  /// [name] Required.
  ResourceSku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ResourceSku.fromMap(Map<String, dynamic> map) {
    return ResourceSku(
      name: map['name'] as String,
    );
  }
}

