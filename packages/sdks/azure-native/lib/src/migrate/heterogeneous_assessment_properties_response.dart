// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of an assessment.
class HeterogeneousAssessmentPropertiesResponse {
  /// Arm id of partner assessments.
  final pulumi.Input<List<String>>? assessmentArmIds;
  /// Azure location for assessment.
  final pulumi.Input<String> azureLocation;
  /// Confidence rating in percentage.
  final pulumi.Input<double> confidenceRatingInPercentage;
  /// Timestamp for the last successfully calculated summary for the assessment.
  final pulumi.Input<String> lastCalculatedOn;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Schema version.
  final pulumi.Input<String> schemaVersion;
  /// Sizing criterion for assessment.
  final pulumi.Input<String> sizingCriterion;
  /// Whether assessment is in valid state and all machines have been assessed.
  final pulumi.Input<String> status;

  /// Creates a new [HeterogeneousAssessmentPropertiesResponse].
  /// [assessmentArmIds] Arm id of partner assessments.
  /// [azureLocation] Azure location for assessment.
  /// [confidenceRatingInPercentage] Confidence rating in percentage.
  /// [lastCalculatedOn] Timestamp for the last successfully calculated summary for the assessment.
  /// [provisioningState] The status of the last operation.
  /// [schemaVersion] Schema version.
  /// [sizingCriterion] Sizing criterion for assessment.
  /// [status] Whether assessment is in valid state and all machines have been assessed.
  const HeterogeneousAssessmentPropertiesResponse({
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
      assessmentArmIds: (() { final guardedValue = map['assessmentArmIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      azureLocation: pulumi.Input.fromValue(map['azureLocation'] as String),
      confidenceRatingInPercentage: pulumi.Input.fromValue(map['confidenceRatingInPercentage'] as double),
      lastCalculatedOn: pulumi.Input.fromValue(map['lastCalculatedOn'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      schemaVersion: pulumi.Input.fromValue(map['schemaVersion'] as String),
      sizingCriterion: pulumi.Input.fromValue(map['sizingCriterion'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
