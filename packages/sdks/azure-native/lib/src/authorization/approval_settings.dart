// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_stage.dart';

/// The approval settings.
class ApprovalSettings {
  /// The type of rule
  final String? approvalMode;
  /// The approval stages of the request.
  final List<ApprovalStage>? approvalStages;
  /// Determines whether approval is required or not.
  final bool? isApprovalRequired;
  /// Determines whether approval is required for assignment extension.
  final bool? isApprovalRequiredForExtension;
  /// Determine whether requestor justification is required.
  final bool? isRequestorJustificationRequired;

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
      'approvalStages': ?approvalStages == null ? null : pulumi.Input.encodeList<ApprovalStage, Map<String, dynamic>>(approvalStages!, (value) => value.toMap()),
      'isApprovalRequired': ?isApprovalRequired,
      'isApprovalRequiredForExtension': ?isApprovalRequiredForExtension,
      'isRequestorJustificationRequired': ?isRequestorJustificationRequired,
    };
  }

  factory ApprovalSettings.fromMap(Map<String, dynamic> map) {
    return ApprovalSettings(
      approvalMode: map['approvalMode'] == null ? null : map['approvalMode'] as String,
      approvalStages: map['approvalStages'] == null ? null : pulumi.Input.decodeList<ApprovalStage>(map['approvalStages'], (value) => ApprovalStage.fromMap((value as Map).cast<String, dynamic>())),
      isApprovalRequired: map['isApprovalRequired'] == null ? null : map['isApprovalRequired'] as bool,
      isApprovalRequiredForExtension: map['isApprovalRequiredForExtension'] == null ? null : map['isApprovalRequiredForExtension'] as bool,
      isRequestorJustificationRequired: map['isRequestorJustificationRequired'] == null ? null : map['isRequestorJustificationRequired'] as bool,
    );
  }
}

