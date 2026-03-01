// ignore_for_file: unused_element, unnecessary_cast


/// Generic pointer to a resource
class ResourceId {
  /// Resource Id
  final String? id;

  /// Creates a new [ResourceId].
  /// [id] Resource Id
  ResourceId({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ResourceId.fromMap(Map<String, dynamic> map) {
    return ResourceId(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

