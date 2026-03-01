// ignore_for_file: unused_element, unnecessary_cast

import 'target_assessment_arm_ids.dart';

/// Properties of a compound assessment.
class CompoundAssessmentProperties {
  /// Fallback machine assessment ARM ID.
  final String? fallbackMachineAssessmentArmId;
  /// ARM IDs of the target assessments.
  final TargetAssessmentArmIds targetAssessmentArmIds;

  /// Creates a new [CompoundAssessmentProperties].
  /// [fallbackMachineAssessmentArmId] Fallback machine assessment ARM ID.
  /// [targetAssessmentArmIds] ARM IDs of the target assessments.
  CompoundAssessmentProperties({
    this.fallbackMachineAssessmentArmId,
    required this.targetAssessmentArmIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackMachineAssessmentArmId': ?fallbackMachineAssessmentArmId,
      'targetAssessmentArmIds': targetAssessmentArmIds.toMap(),
    };
  }

  factory CompoundAssessmentProperties.fromMap(Map<String, dynamic> map) {
    return CompoundAssessmentProperties(
      fallbackMachineAssessmentArmId: map['fallbackMachineAssessmentArmId'] == null ? null : map['fallbackMachineAssessmentArmId'] as String,
      targetAssessmentArmIds: TargetAssessmentArmIds.fromMap((map['targetAssessmentArmIds'] as Map).cast<String, dynamic>()),
    );
  }
}

