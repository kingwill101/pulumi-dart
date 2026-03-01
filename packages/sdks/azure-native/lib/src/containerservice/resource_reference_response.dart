// ignore_for_file: unused_element, unnecessary_cast


/// A reference to an Azure resource.
class ResourceReferenceResponse {
  /// The fully qualified Azure resource id.
  final String? id;

  /// Creates a new [ResourceReferenceResponse].
  /// [id] The fully qualified Azure resource id.
  ResourceReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ResourceReferenceResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

