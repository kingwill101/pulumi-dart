// ignore_for_file: unused_element, unnecessary_cast

class SecurityProfileV2ProfileAssessmentConfig {
  /// The identifier for this object. Format specified above.
  final String assessment;

  /// The weight of the assessment.
  /// Possible values are: `MINOR`, `MODERATE`, `MAJOR`.
  final String weight;

  SecurityProfileV2ProfileAssessmentConfig({
    required this.assessment,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assessment'] = assessment;
    map['weight'] = weight;
    return map;
  }

  factory SecurityProfileV2ProfileAssessmentConfig.fromMap(
      Map<String, dynamic> map) {
    return SecurityProfileV2ProfileAssessmentConfig(
      assessment: map['assessment'] as String,
      weight: map['weight'] as String,
    );
  }
}
