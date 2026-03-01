// ignore_for_file: unused_element, unnecessary_cast


/// The azure resource id.
class ResourceId {
  /// The azure resource id.
  final String? id;

  /// Creates a new [ResourceId].
  /// [id] The azure resource id.
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

