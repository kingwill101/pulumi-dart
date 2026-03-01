// ignore_for_file: unused_element, unnecessary_cast


/// Properties of an assessment.
class HeterogeneousAssessmentProperties {
  /// Arm id of partner assessments.
  final List<String>? assessmentArmIds;

  /// Creates a new [HeterogeneousAssessmentProperties].
  /// [assessmentArmIds] Arm id of partner assessments.
  HeterogeneousAssessmentProperties({
    this.assessmentArmIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentArmIds': ?assessmentArmIds,
    };
  }

  factory HeterogeneousAssessmentProperties.fromMap(Map<String, dynamic> map) {
    return HeterogeneousAssessmentProperties(
      assessmentArmIds: map['assessmentArmIds'] == null ? null : (map['assessmentArmIds'] as List).cast<String>(),
    );
  }
}

