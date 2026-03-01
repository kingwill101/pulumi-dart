// ignore_for_file: unused_element, unnecessary_cast


/// The resource reference.
class ResourceReferenceResponse {
  /// The resource id.
  final String? id;
  /// Gets the resource name.
  final String name;
  /// Gets the resource type.
  final String type;

  /// Creates a new [ResourceReferenceResponse].
  /// [id] The resource id.
  /// [name] Gets the resource name.
  /// [type] Gets the resource type.
  ResourceReferenceResponse({
    this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'type': type,
    };
  }

  factory ResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ResourceReferenceResponse(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

