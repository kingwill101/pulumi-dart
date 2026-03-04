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
  final pulumi.Input<WorkflowOnExceptionStepCustomStepDetails>?
  customStepDetails;

  /// Details for a step that decrypts the file.
  final pulumi.Input<WorkflowOnExceptionStepDecryptStepDetails>?
  decryptStepDetails;

  /// Details for a step that deletes the file.
  final pulumi.Input<WorkflowOnExceptionStepDeleteStepDetails>?
  deleteStepDetails;

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
      'copyStepDetails':
          ?pulumi.Input.mapOptionalInputValue<
            WorkflowOnExceptionStepCopyStepDetails,
            Map<String, dynamic>
          >(copyStepDetails, (value) => value.toMap()),
      'customStepDetails':
          ?pulumi.Input.mapOptionalInputValue<
            WorkflowOnExceptionStepCustomStepDetails,
            Map<String, dynamic>
          >(customStepDetails, (value) => value.toMap()),
      'decryptStepDetails':
          ?pulumi.Input.mapOptionalInputValue<
            WorkflowOnExceptionStepDecryptStepDetails,
            Map<String, dynamic>
          >(decryptStepDetails, (value) => value.toMap()),
      'deleteStepDetails':
          ?pulumi.Input.mapOptionalInputValue<
            WorkflowOnExceptionStepDeleteStepDetails,
            Map<String, dynamic>
          >(deleteStepDetails, (value) => value.toMap()),
      'tagStepDetails':
          ?pulumi.Input.mapOptionalInputValue<
            WorkflowOnExceptionStepTagStepDetails,
            Map<String, dynamic>
          >(tagStepDetails, (value) => value.toMap()),
      'type': type,
    };
  }

  factory WorkflowOnExceptionStep.fromMap(Map<String, dynamic> map) {
    return WorkflowOnExceptionStep(
      copyStepDetails: (() {
        final guardedValue = map['copyStepDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkflowOnExceptionStepCopyStepDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      customStepDetails: (() {
        final guardedValue = map['customStepDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkflowOnExceptionStepCustomStepDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      decryptStepDetails: (() {
        final guardedValue = map['decryptStepDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkflowOnExceptionStepDecryptStepDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deleteStepDetails: (() {
        final guardedValue = map['deleteStepDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkflowOnExceptionStepDeleteStepDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tagStepDetails: (() {
        final guardedValue = map['tagStepDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkflowOnExceptionStepTagStepDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
