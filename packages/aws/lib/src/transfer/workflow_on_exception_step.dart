// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_on_exception_step_copy_step_details.dart';
import 'workflow_on_exception_step_custom_step_details.dart';
import 'workflow_on_exception_step_decrypt_step_details.dart';
import 'workflow_on_exception_step_delete_step_details.dart';
import 'workflow_on_exception_step_tag_step_details.dart';

class WorkflowOnExceptionStep {
  /// Details for a step that performs a file copy. See Copy Step Details below.
  final WorkflowOnExceptionStepCopyStepDetails? copyStepDetails;

  /// Details for a step that invokes a lambda function.
  final WorkflowOnExceptionStepCustomStepDetails? customStepDetails;

  /// Details for a step that decrypts the file.
  final WorkflowOnExceptionStepDecryptStepDetails? decryptStepDetails;

  /// Details for a step that deletes the file.
  final WorkflowOnExceptionStepDeleteStepDetails? deleteStepDetails;

  /// Details for a step that creates one or more tags.
  final WorkflowOnExceptionStepTagStepDetails? tagStepDetails;
  final String type;

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
    final map = <String, dynamic>{};
    final copyStepDetailsValue = copyStepDetails;
    if (copyStepDetailsValue != null) {
      map['copyStepDetails'] = copyStepDetailsValue.toMap();
    }
    final customStepDetailsValue = customStepDetails;
    if (customStepDetailsValue != null) {
      map['customStepDetails'] = customStepDetailsValue.toMap();
    }
    final decryptStepDetailsValue = decryptStepDetails;
    if (decryptStepDetailsValue != null) {
      map['decryptStepDetails'] = decryptStepDetailsValue.toMap();
    }
    final deleteStepDetailsValue = deleteStepDetails;
    if (deleteStepDetailsValue != null) {
      map['deleteStepDetails'] = deleteStepDetailsValue.toMap();
    }
    final tagStepDetailsValue = tagStepDetails;
    if (tagStepDetailsValue != null) {
      map['tagStepDetails'] = tagStepDetailsValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory WorkflowOnExceptionStep.fromMap(Map<String, dynamic> map) {
    return WorkflowOnExceptionStep(
      copyStepDetails: map['copyStepDetails'] == null
          ? null
          : WorkflowOnExceptionStepCopyStepDetails.fromMap(
              (map['copyStepDetails'] as Map).cast<String, dynamic>()),
      customStepDetails: map['customStepDetails'] == null
          ? null
          : WorkflowOnExceptionStepCustomStepDetails.fromMap(
              (map['customStepDetails'] as Map).cast<String, dynamic>()),
      decryptStepDetails: map['decryptStepDetails'] == null
          ? null
          : WorkflowOnExceptionStepDecryptStepDetails.fromMap(
              (map['decryptStepDetails'] as Map).cast<String, dynamic>()),
      deleteStepDetails: map['deleteStepDetails'] == null
          ? null
          : WorkflowOnExceptionStepDeleteStepDetails.fromMap(
              (map['deleteStepDetails'] as Map).cast<String, dynamic>()),
      tagStepDetails: map['tagStepDetails'] == null
          ? null
          : WorkflowOnExceptionStepTagStepDetails.fromMap(
              (map['tagStepDetails'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
