// ignore_for_file: unused_element, unnecessary_cast


/// The azure resource id.
class ResourceIdResponse {
  /// The azure resource id.
  final String? id;

  /// Creates a new [ResourceIdResponse].
  /// [id] The azure resource id.
  ResourceIdResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ResourceIdResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

