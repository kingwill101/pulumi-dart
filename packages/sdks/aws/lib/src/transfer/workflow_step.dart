// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_step_copy_step_details.dart';
import 'workflow_step_custom_step_details.dart';
import 'workflow_step_decrypt_step_details.dart';
import 'workflow_step_delete_step_details.dart';
import 'workflow_step_tag_step_details.dart';

class WorkflowStep {
  /// Details for a step that performs a file copy. See Copy Step Details below.
  final pulumi.Input<WorkflowStepCopyStepDetails>? copyStepDetails;
  /// Details for a step that invokes a lambda function.
  final pulumi.Input<WorkflowStepCustomStepDetails>? customStepDetails;
  /// Details for a step that decrypts the file.
  final pulumi.Input<WorkflowStepDecryptStepDetails>? decryptStepDetails;
  /// Details for a step that deletes the file.
  final pulumi.Input<WorkflowStepDeleteStepDetails>? deleteStepDetails;
  /// Details for a step that creates one or more tags.
  final pulumi.Input<WorkflowStepTagStepDetails>? tagStepDetails;
  final pulumi.Input<String> type;

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
      'copyStepDetails': ?pulumi.Input.mapOptionalInputValue<WorkflowStepCopyStepDetails, Map<String, dynamic>>(copyStepDetails, (value) => value.toMap()),
      'customStepDetails': ?pulumi.Input.mapOptionalInputValue<WorkflowStepCustomStepDetails, Map<String, dynamic>>(customStepDetails, (value) => value.toMap()),
      'decryptStepDetails': ?pulumi.Input.mapOptionalInputValue<WorkflowStepDecryptStepDetails, Map<String, dynamic>>(decryptStepDetails, (value) => value.toMap()),
      'deleteStepDetails': ?pulumi.Input.mapOptionalInputValue<WorkflowStepDeleteStepDetails, Map<String, dynamic>>(deleteStepDetails, (value) => value.toMap()),
      'tagStepDetails': ?pulumi.Input.mapOptionalInputValue<WorkflowStepTagStepDetails, Map<String, dynamic>>(tagStepDetails, (value) => value.toMap()),
      'type': type,
    };
  }

  factory WorkflowStep.fromMap(Map<String, dynamic> map) {
    return WorkflowStep(
      copyStepDetails: map['copyStepDetails'] == null ? null : (WorkflowStepCopyStepDetails.fromMap((map['copyStepDetails'] as Map).cast<String, dynamic>())).input(),
      customStepDetails: map['customStepDetails'] == null ? null : (WorkflowStepCustomStepDetails.fromMap((map['customStepDetails'] as Map).cast<String, dynamic>())).input(),
      decryptStepDetails: map['decryptStepDetails'] == null ? null : (WorkflowStepDecryptStepDetails.fromMap((map['decryptStepDetails'] as Map).cast<String, dynamic>())).input(),
      deleteStepDetails: map['deleteStepDetails'] == null ? null : (WorkflowStepDeleteStepDetails.fromMap((map['deleteStepDetails'] as Map).cast<String, dynamic>())).input(),
      tagStepDetails: map['tagStepDetails'] == null ? null : (WorkflowStepTagStepDetails.fromMap((map['tagStepDetails'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

