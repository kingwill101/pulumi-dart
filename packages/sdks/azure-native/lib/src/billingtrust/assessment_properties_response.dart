// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// The properties of an Assessment resource
class AssessmentPropertiesResponse {
  /// The name of the assessment template whose rules will be evaluated (e.g. 'Edu'). Immutable after creation.
  final pulumi.Input<String> assessmentType;
  /// Error information when evaluationState is failed
  final pulumi.Input<ErrorDetailResponse> error;
  /// The aggregated evaluation state of all active rules within this assessment
  final pulumi.Input<String> evaluationState;
  /// The next scheduled re-evaluation of this assessment. Only present when one or more rules in this assessment have a configured recurrence.
  final pulumi.Input<String> nextEvaluation;
  /// The provisioning state of the resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [AssessmentPropertiesResponse].
  /// [assessmentType] The name of the assessment template whose rules will be evaluated (e.g. 'Edu'). Immutable after creation.
  /// [error] Error information when evaluationState is failed
  /// [evaluationState] The aggregated evaluation state of all active rules within this assessment
  /// [nextEvaluation] The next scheduled re-evaluation of this assessment. Only present when one or more rules in this assessment have a configured recurrence.
  /// [provisioningState] The provisioning state of the resource
  const AssessmentPropertiesResponse({
    required this.assessmentType,
    required this.error,
    required this.evaluationState,
    required this.nextEvaluation,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentType': assessmentType,
      'error': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'evaluationState': evaluationState,
      'nextEvaluation': nextEvaluation,
      'provisioningState': provisioningState,
    };
  }

  factory AssessmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AssessmentPropertiesResponse(
      assessmentType: pulumi.Input.fromValue(map['assessmentType'] as String),
      error: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      evaluationState: pulumi.Input.fromValue(map['evaluationState'] as String),
      nextEvaluation: pulumi.Input.fromValue(map['nextEvaluation'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
