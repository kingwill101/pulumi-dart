// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_step_copy_step_details.dart';
import 'workflow_step_custom_step_details.dart';
import 'workflow_step_decrypt_step_details.dart';
import 'workflow_step_delete_step_details.dart';
import 'workflow_step_tag_step_details.dart';

class WorkflowStep {
  /// Details for a step that performs a file copy. See Copy Step Details below.
  final WorkflowStepCopyStepDetails? copyStepDetails;
  /// Details for a step that invokes a lambda function.
  final WorkflowStepCustomStepDetails? customStepDetails;
  /// Details for a step that decrypts the file.
  final WorkflowStepDecryptStepDetails? decryptStepDetails;
  /// Details for a step that deletes the file.
  final WorkflowStepDeleteStepDetails? deleteStepDetails;
  /// Details for a step that creates one or more tags.
  final WorkflowStepTagStepDetails? tagStepDetails;
  final String type;

  /// Creates a new [WorkflowStep].
  /// [copyStepDetails] Details for a step that performs a file copy. See Copy Step Details below.
  /// [customStepDetails] Details for a step that invokes a lambda function.
  /// [decryptStepDetails] Details for a step that decrypts the file.
  /// [deleteStepDetails] Details for a step that deletes the file.
  /// [tagStepDetails] Details for a step that creates one or more tags.
  /// [type] Required.
  WorkflowStep({
    this.copyStepDetails,
    this.customStepDetails,
    this.decryptStepDetails,
    this.deleteStepDetails,
    this.tagStepDetails,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyStepDetails': ?copyStepDetails == null ? null : copyStepDetails!.toMap(),
      'customStepDetails': ?customStepDetails == null ? null : customStepDetails!.toMap(),
      'decryptStepDetails': ?decryptStepDetails == null ? null : decryptStepDetails!.toMap(),
      'deleteStepDetails': ?deleteStepDetails == null ? null : deleteStepDetails!.toMap(),
      'tagStepDetails': ?tagStepDetails == null ? null : tagStepDetails!.toMap(),
      'type': type,
    };
  }

  factory WorkflowStep.fromMap(Map<String, dynamic> map) {
    return WorkflowStep(
      copyStepDetails: map['copyStepDetails'] == null ? null : WorkflowStepCopyStepDetails.fromMap((map['copyStepDetails'] as Map).cast<String, dynamic>()),
      customStepDetails: map['customStepDetails'] == null ? null : WorkflowStepCustomStepDetails.fromMap((map['customStepDetails'] as Map).cast<String, dynamic>()),
      decryptStepDetails: map['decryptStepDetails'] == null ? null : WorkflowStepDecryptStepDetails.fromMap((map['decryptStepDetails'] as Map).cast<String, dynamic>()),
      deleteStepDetails: map['deleteStepDetails'] == null ? null : WorkflowStepDeleteStepDetails.fromMap((map['deleteStepDetails'] as Map).cast<String, dynamic>()),
      tagStepDetails: map['tagStepDetails'] == null ? null : WorkflowStepTagStepDetails.fromMap((map['tagStepDetails'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

