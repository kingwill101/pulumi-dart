// ignore_for_file: unused_element, unnecessary_cast


class SecurityProfileV2ProfileAssessmentConfig {
  /// The identifier for this object. Format specified above.
  final String assessment;
  /// The weight of the assessment.
  /// Possible values are: `MINOR`, `MODERATE`, `MAJOR`.
  final String weight;

  /// Creates a new [SecurityProfileV2ProfileAssessmentConfig].
  /// [assessment] The identifier for this object. Format specified above.
  /// [weight] The weight of the assessment.
  SecurityProfileV2ProfileAssessmentConfig({
    required this.assessment,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessment': assessment,
      'weight': weight,
    };
  }

  factory SecurityProfileV2ProfileAssessmentConfig.fromMap(Map<String, dynamic> map) {
    return SecurityProfileV2ProfileAssessmentConfig(
      assessment: map['assessment'] as String,
      weight: map['weight'] as String,
    );
  }
}

