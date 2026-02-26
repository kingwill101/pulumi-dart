// ignore_for_file: unused_element, unnecessary_cast

/// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
class JustificationResponse3 {
  /// Additional details on why this justification was chosen.
  final String details;

  /// The justification type for this vulnerability.
  final String justificationType;

  JustificationResponse3({
    required this.details,
    required this.justificationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['details'] = details;
    map['justificationType'] = justificationType;
    return map;
  }

  factory JustificationResponse3.fromMap(Map<String, dynamic> map) {
    return JustificationResponse3(
      details: map['details'] as String,
      justificationType: map['justificationType'] as String,
    );
  }
}
