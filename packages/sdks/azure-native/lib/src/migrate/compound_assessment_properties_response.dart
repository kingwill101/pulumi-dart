// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compound_assessment_details_response.dart';
import 'target_assessment_arm_ids_response.dart';

/// Properties of a compound assessment.
class CompoundAssessmentPropertiesResponse {
  /// Details of the compound assessment.
  final pulumi.Input<CompoundAssessmentDetailsResponse> details;
  /// Fallback machine assessment ARM ID.
  final pulumi.Input<String>? fallbackMachineAssessmentArmId;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// ARM IDs of the target assessments.
  final pulumi.Input<TargetAssessmentArmIdsResponse> targetAssessmentArmIds;

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
      'details': pulumi.Input.mapInputValue<CompoundAssessmentDetailsResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'fallbackMachineAssessmentArmId': ?fallbackMachineAssessmentArmId,
      'provisioningState': provisioningState,
      'targetAssessmentArmIds': pulumi.Input.mapInputValue<TargetAssessmentArmIdsResponse, Map<String, dynamic>>(targetAssessmentArmIds, (value) => value.toMap()),
    };
  }

  factory CompoundAssessmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CompoundAssessmentPropertiesResponse(
      details: (CompoundAssessmentDetailsResponse.fromMap((map['details'] as Map).cast<String, dynamic>())).input(),
      fallbackMachineAssessmentArmId: map['fallbackMachineAssessmentArmId'] == null ? null : (map['fallbackMachineAssessmentArmId'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      targetAssessmentArmIds: (TargetAssessmentArmIdsResponse.fromMap((map['targetAssessmentArmIds'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

