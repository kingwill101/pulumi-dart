// ignore_for_file: unused_element, unnecessary_cast


/// The resource reference.
class ResourceReference {
  /// The resource id.
  final String? id;

  /// Creates a new [ResourceReference].
  /// [id] The resource id.
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

