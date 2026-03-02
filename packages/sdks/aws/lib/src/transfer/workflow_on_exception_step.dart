// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_on_exception_step_copy_step_details.dart';
import 'workflow_on_exception_step_custom_step_details.dart';
import 'workflow_on_exception_step_decrypt_step_details.dart';
import 'workflow_on_exception_step_delete_step_details.dart';
import 'workflow_on_exception_step_tag_step_details.dart';

class WorkflowOnExceptionStep {
  /// Details for a step that performs a file copy. See Copy Step Details below.
  final pulumi.Input<WorkflowOnExceptionStepCopyStepDetails>? copyStepDetails;
  /// Details for a step that invokes a lambda function.
  final pulumi.Input<WorkflowOnExceptionStepCustomStepDetails>? customStepDetails;
  /// Details for a step that decrypts the file.
  final pulumi.Input<WorkflowOnExceptionStepDecryptStepDetails>? decryptStepDetails;
  /// Details for a step that deletes the file.
  final pulumi.Input<WorkflowOnExceptionStepDeleteStepDetails>? deleteStepDetails;
  /// Details for a step that creates one or more tags.
  final pulumi.Input<WorkflowOnExceptionStepTagStepDetails>? tagStepDetails;
  final pulumi.Input<String> type;

  /// Creates a new [WorkflowOnExceptionStep].
  /// [copyStepDetails] Details for a step that performs a file copy. See Copy Step Details below.
  /// [customStepDetails] Details for a step that invokes a lambda function.
  /// [decryptStepDetails] Details for a step that decrypts the file.
  /// [deleteStepDetails] Details for a step that deletes the file.
  /// [tagStepDetails] Details for a step that creates one or more tags.
  /// [type] Required.
  WorkflowOnExceptionStep({
    this.copyStepDetails,
    this.customStepDetails,
    this.decryptStepDetails,
    this.deleteStepDetails,
    this.tagStepDetails,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyStepDetails': ?pulumi.Input.mapOptionalInputValue<WorkflowOnExceptionStepCopyStepDetails, Map<String, dynamic>>(copyStepDetails, (value) => value.toMap()),
      'customStepDetails': ?pulumi.Input.mapOptionalInputValue<WorkflowOnExceptionStepCustomStepDetails, Map<String, dynamic>>(customStepDetails, (value) => value.toMap()),
      'decryptStepDetails': ?pulumi.Input.mapOptionalInputValue<WorkflowOnExceptionStepDecryptStepDetails, Map<String, dynamic>>(decryptStepDetails, (value) => value.toMap()),
      'deleteStepDetails': ?pulumi.Input.mapOptionalInputValue<WorkflowOnExceptionStepDeleteStepDetails, Map<String, dynamic>>(deleteStepDetails, (value) => value.toMap()),
      'tagStepDetails': ?pulumi.Input.mapOptionalInputValue<WorkflowOnExceptionStepTagStepDetails, Map<String, dynamic>>(tagStepDetails, (value) => value.toMap()),
      'type': type,
    };
  }

  factory WorkflowOnExceptionStep.fromMap(Map<String, dynamic> map) {
    return WorkflowOnExceptionStep(
      copyStepDetails: map['copyStepDetails'] == null ? null : (WorkflowOnExceptionStepCopyStepDetails.fromMap((map['copyStepDetails'] as Map).cast<String, dynamic>())).input(),
      customStepDetails: map['customStepDetails'] == null ? null : (WorkflowOnExceptionStepCustomStepDetails.fromMap((map['customStepDetails'] as Map).cast<String, dynamic>())).input(),
      decryptStepDetails: map['decryptStepDetails'] == null ? null : (WorkflowOnExceptionStepDecryptStepDetails.fromMap((map['decryptStepDetails'] as Map).cast<String, dynamic>())).input(),
      deleteStepDetails: map['deleteStepDetails'] == null ? null : (WorkflowOnExceptionStepDeleteStepDetails.fromMap((map['deleteStepDetails'] as Map).cast<String, dynamic>())).input(),
      tagStepDetails: map['tagStepDetails'] == null ? null : (WorkflowOnExceptionStepTagStepDetails.fromMap((map['tagStepDetails'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

