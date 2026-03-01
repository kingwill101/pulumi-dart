// ignore_for_file: unused_element, unnecessary_cast


/// Reference to another resource.
class ReferencedResourceResponse {
  /// Resource ID.
  final String? id;

  /// Creates a new [ReferencedResourceResponse].
  /// [id] Resource ID.
  ReferencedResourceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ReferencedResourceResponse.fromMap(Map<String, dynamic> map) {
    return ReferencedResourceResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

