// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_stage.dart';

/// The approval settings.
class ApprovalSettings {
  /// The type of rule
  final pulumi.Input<String>? approvalMode;

  /// The approval stages of the request.
  final pulumi.Input<List<ApprovalStage>>? approvalStages;

  /// Determines whether approval is required or not.
  final pulumi.Input<bool>? isApprovalRequired;

  /// Determines whether approval is required for assignment extension.
  final pulumi.Input<bool>? isApprovalRequiredForExtension;

  /// Determine whether requestor justification is required.
  final pulumi.Input<bool>? isRequestorJustificationRequired;

  /// Creates a new [ApprovalSettings].
  /// [approvalMode] The type of rule
  /// [approvalStages] The approval stages of the request.
  /// [isApprovalRequired] Determines whether approval is required or not.
  /// [isApprovalRequiredForExtension] Determines whether approval is required for assignment extension.
  /// [isRequestorJustificationRequired] Determine whether requestor justification is required.
  ApprovalSettings({
    this.approvalMode,
    this.approvalStages,
    this.isApprovalRequired,
    this.isApprovalRequiredForExtension,
    this.isRequestorJustificationRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalMode': ?approvalMode,
      'approvalStages':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApprovalStage>,
            List<Map<String, dynamic>>
          >(
            approvalStages,
            (value) =>
                pulumi.Input.encodeList<ApprovalStage, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'isApprovalRequired': ?isApprovalRequired,
      'isApprovalRequiredForExtension': ?isApprovalRequiredForExtension,
      'isRequestorJustificationRequired': ?isRequestorJustificationRequired,
    };
  }

  factory ApprovalSettings.fromMap(Map<String, dynamic> map) {
    return ApprovalSettings(
      approvalMode: (() {
        final guardedValue = map['approvalMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      approvalStages: (() {
        final guardedValue = map['approvalStages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApprovalStage>(
            guardedValue,
            (value) =>
                ApprovalStage.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      isApprovalRequired: (() {
        final guardedValue = map['isApprovalRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isApprovalRequiredForExtension: (() {
        final guardedValue = map['isApprovalRequiredForExtension'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isRequestorJustificationRequired: (() {
        final guardedValue = map['isRequestorJustificationRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
