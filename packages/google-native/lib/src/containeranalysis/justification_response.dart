// ignore_for_file: unused_element, unnecessary_cast


/// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
class JustificationResponse {
  /// Additional details on why this justification was chosen.
  final String details;
  /// The justification type for this vulnerability.
  final String justificationType;

  /// Creates a new [JustificationResponse].
  /// [details] Additional details on why this justification was chosen.
  /// [justificationType] The justification type for this vulnerability.
  JustificationResponse({
    required this.details,
    required this.justificationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'justificationType': justificationType,
    };
  }

  factory JustificationResponse.fromMap(Map<String, dynamic> map) {
    return JustificationResponse(
      details: map['details'] as String,
      justificationType: map['justificationType'] as String,
    );
  }
}

