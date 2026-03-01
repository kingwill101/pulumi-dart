// ignore_for_file: unused_element, unnecessary_cast


/// A reference to an Azure resource.
class ResourceReference {
  /// The fully qualified Azure resource id.
  final String? id;

  /// Creates a new [ResourceReference].
  /// [id] The fully qualified Azure resource id.
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

