// ignore_for_file: unused_element, unnecessary_cast


class SubResourceReadOnlyResponse {
  /// Resource Id
  final String id;

  /// Creates a new [SubResourceReadOnlyResponse].
  /// [id] Resource Id
  SubResourceReadOnlyResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory SubResourceReadOnlyResponse.fromMap(Map<String, dynamic> map) {
    return SubResourceReadOnlyResponse(
      id: map['id'] as String,
    );
  }
}

