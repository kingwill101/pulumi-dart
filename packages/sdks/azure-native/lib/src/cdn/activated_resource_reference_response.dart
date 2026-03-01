// ignore_for_file: unused_element, unnecessary_cast


/// Reference to another resource along with its state.
class ActivatedResourceReferenceResponse {
  /// Resource ID.
  final String? id;
  /// Whether the resource is active or inactive
  final bool isActive;

  /// Creates a new [ActivatedResourceReferenceResponse].
  /// [id] Resource ID.
  /// [isActive] Whether the resource is active or inactive
  ActivatedResourceReferenceResponse({
    this.id,
    required this.isActive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'isActive': isActive,
    };
  }

  factory ActivatedResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ActivatedResourceReferenceResponse(
      id: map['id'] == null ? null : map['id'] as String,
      isActive: map['isActive'] as bool,
    );
  }
}

