// ignore_for_file: unused_element, unnecessary_cast

import 'compound_assessment_details_response.dart';
import 'target_assessment_arm_ids_response.dart';

/// Properties of a compound assessment.
class CompoundAssessmentPropertiesResponse {
  /// Details of the compound assessment.
  final CompoundAssessmentDetailsResponse details;
  /// Fallback machine assessment ARM ID.
  final String? fallbackMachineAssessmentArmId;
  /// The status of the last operation.
  final String provisioningState;
  /// ARM IDs of the target assessments.
  final TargetAssessmentArmIdsResponse targetAssessmentArmIds;

  /// Creates a new [CompoundAssessmentPropertiesResponse].
  /// [details] Details of the compound assessment.
  /// [fallbackMachineAssessmentArmId] Fallback machine assessment ARM ID.
  /// [provisioningState] The status of the last operation.
  /// [targetAssessmentArmIds] ARM IDs of the target assessments.
  CompoundAssessmentPropertiesResponse({
    required this.details,
    this.fallbackMachineAssessmentArmId,
    required this.provisioningState,
    required this.targetAssessmentArmIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details.toMap(),
      'fallbackMachineAssessmentArmId': ?fallbackMachineAssessmentArmId,
      'provisioningState': provisioningState,
      'targetAssessmentArmIds': targetAssessmentArmIds.toMap(),
    };
  }

  factory CompoundAssessmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CompoundAssessmentPropertiesResponse(
      details: CompoundAssessmentDetailsResponse.fromMap((map['details'] as Map).cast<String, dynamic>()),
      fallbackMachineAssessmentArmId: map['fallbackMachineAssessmentArmId'] == null ? null : map['fallbackMachineAssessmentArmId'] as String,
      provisioningState: map['provisioningState'] as String,
      targetAssessmentArmIds: TargetAssessmentArmIdsResponse.fromMap((map['targetAssessmentArmIds'] as Map).cast<String, dynamic>()),
    );
  }
}

