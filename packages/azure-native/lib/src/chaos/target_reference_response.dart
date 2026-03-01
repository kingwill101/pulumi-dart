// ignore_for_file: unused_element, unnecessary_cast


/// Model that represents a reference to a Target in the selector.
class TargetReferenceResponse {
  /// String of the resource ID of a Target resource.
  final String id;
  /// Enum of the Target reference type.
  final String type;

  /// Creates a new [TargetReferenceResponse].
  /// [id] String of the resource ID of a Target resource.
  /// [type] Enum of the Target reference type.
  TargetReferenceResponse({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory TargetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return TargetReferenceResponse(
      id: map['id'] as String,
      type: map['type'] as String,
    );
  }
}

