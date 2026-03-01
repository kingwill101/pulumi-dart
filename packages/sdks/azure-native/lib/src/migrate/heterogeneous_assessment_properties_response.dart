// ignore_for_file: unused_element, unnecessary_cast


/// Properties of an assessment.
class HeterogeneousAssessmentPropertiesResponse {
  /// Arm id of partner assessments.
  final List<String>? assessmentArmIds;
  /// Azure location for assessment.
  final String azureLocation;
  /// Confidence rating in percentage.
  final double confidenceRatingInPercentage;
  /// Timestamp for the last successfully calculated summary for the assessment.
  final String lastCalculatedOn;
  /// The status of the last operation.
  final String provisioningState;
  /// Schema version.
  final String schemaVersion;
  /// Sizing criterion for assessment.
  final String sizingCriterion;
  /// Whether assessment is in valid state and all machines have been assessed.
  final String status;

  /// Creates a new [HeterogeneousAssessmentPropertiesResponse].
  /// [assessmentArmIds] Arm id of partner assessments.
  /// [azureLocation] Azure location for assessment.
  /// [confidenceRatingInPercentage] Confidence rating in percentage.
  /// [lastCalculatedOn] Timestamp for the last successfully calculated summary for the assessment.
  /// [provisioningState] The status of the last operation.
  /// [schemaVersion] Schema version.
  /// [sizingCriterion] Sizing criterion for assessment.
  /// [status] Whether assessment is in valid state and all machines have been assessed.
  HeterogeneousAssessmentPropertiesResponse({
    this.assessmentArmIds,
    required this.azureLocation,
    required this.confidenceRatingInPercentage,
    required this.lastCalculatedOn,
    required this.provisioningState,
    required this.schemaVersion,
    required this.sizingCriterion,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentArmIds': ?assessmentArmIds,
      'azureLocation': azureLocation,
      'confidenceRatingInPercentage': confidenceRatingInPercentage,
      'lastCalculatedOn': lastCalculatedOn,
      'provisioningState': provisioningState,
      'schemaVersion': schemaVersion,
      'sizingCriterion': sizingCriterion,
      'status': status,
    };
  }

  factory HeterogeneousAssessmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HeterogeneousAssessmentPropertiesResponse(
      assessmentArmIds: map['assessmentArmIds'] == null ? null : (map['assessmentArmIds'] as List).cast<String>(),
      azureLocation: map['azureLocation'] as String,
      confidenceRatingInPercentage: map['confidenceRatingInPercentage'] as double,
      lastCalculatedOn: map['lastCalculatedOn'] as String,
      provisioningState: map['provisioningState'] as String,
      schemaVersion: map['schemaVersion'] as String,
      sizingCriterion: map['sizingCriterion'] as String,
      status: map['status'] as String,
    );
  }
}

