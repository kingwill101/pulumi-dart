// ignore_for_file: unused_element, unnecessary_cast


class SubResourceResponse {
  /// Resource Id
  final String? id;

  /// Creates a new [SubResourceResponse].
  /// [id] Resource Id
  SubResourceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubResourceResponse.fromMap(Map<String, dynamic> map) {
    return SubResourceResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

