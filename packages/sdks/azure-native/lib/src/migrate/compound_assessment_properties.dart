// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_assessment_arm_ids.dart';

/// Properties of a compound assessment.
class CompoundAssessmentProperties {
  /// Fallback machine assessment ARM ID.
  final pulumi.Input<String>? fallbackMachineAssessmentArmId;

  /// ARM IDs of the target assessments.
  final pulumi.Input<TargetAssessmentArmIds> targetAssessmentArmIds;

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
      'targetAssessmentArmIds':
          pulumi.Input.mapInputValue<
            TargetAssessmentArmIds,
            Map<String, dynamic>
          >(targetAssessmentArmIds, (value) => value.toMap()),
    };
  }

  factory CompoundAssessmentProperties.fromMap(Map<String, dynamic> map) {
    return CompoundAssessmentProperties(
      fallbackMachineAssessmentArmId: (() {
        final guardedValue = map['fallbackMachineAssessmentArmId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetAssessmentArmIds: pulumi.Input.fromValue(
        TargetAssessmentArmIds.fromMap(
          (map['targetAssessmentArmIds']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
