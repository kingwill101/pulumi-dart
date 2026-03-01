// ignore_for_file: unused_element, unnecessary_cast


/// Linked service reference type.
class LinkedServiceReferenceResponse {
  /// Arguments for LinkedService.
  final Map<String, dynamic>? parameters;
  /// Reference LinkedService name.
  final String referenceName;
  /// Linked service reference type.
  final String type;

  /// Creates a new [LinkedServiceReferenceResponse].
  /// [parameters] Arguments for LinkedService.
  /// [referenceName] Reference LinkedService name.
  /// [type] Linked service reference type.
  LinkedServiceReferenceResponse({
    this.parameters,
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory LinkedServiceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LinkedServiceReferenceResponse(
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, dynamic>(),
      referenceName: map['referenceName'] as String,
      type: map['type'] as String,
    );
  }
}

