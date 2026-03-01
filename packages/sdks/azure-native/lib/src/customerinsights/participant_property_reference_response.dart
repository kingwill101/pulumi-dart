// ignore_for_file: unused_element, unnecessary_cast


/// The participant property reference.
class ParticipantPropertyReferenceResponse {
  /// The source property that maps to the target property.
  final String sourcePropertyName;
  /// The target property that maps to the source property.
  final String targetPropertyName;

  /// Creates a new [ParticipantPropertyReferenceResponse].
  /// [sourcePropertyName] The source property that maps to the target property.
  /// [targetPropertyName] The target property that maps to the source property.
  ParticipantPropertyReferenceResponse({
    required this.sourcePropertyName,
    required this.targetPropertyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourcePropertyName': sourcePropertyName,
      'targetPropertyName': targetPropertyName,
    };
  }

  factory ParticipantPropertyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ParticipantPropertyReferenceResponse(
      sourcePropertyName: map['sourcePropertyName'] as String,
      targetPropertyName: map['targetPropertyName'] as String,
    );
  }
}

