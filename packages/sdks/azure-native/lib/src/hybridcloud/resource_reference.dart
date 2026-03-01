// ignore_for_file: unused_element, unnecessary_cast


/// Resource reference properties.
class ResourceReference {
  /// Resource ID.
  final String? id;

  /// Creates a new [ResourceReference].
  /// [id] Resource ID.
  ResourceReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ResourceReference.fromMap(Map<String, dynamic> map) {
    return ResourceReference(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

