// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_stage_response.dart';

/// The approval settings.
class ApprovalSettingsResponse {
  /// The type of rule
  final String? approvalMode;
  /// The approval stages of the request.
  final List<ApprovalStageResponse>? approvalStages;
  /// Determines whether approval is required or not.
  final bool? isApprovalRequired;
  /// Determines whether approval is required for assignment extension.
  final bool? isApprovalRequiredForExtension;
  /// Determine whether requestor justification is required.
  final bool? isRequestorJustificationRequired;

  /// Creates a new [ApprovalSettingsResponse].
  /// [approvalMode] The type of rule
  /// [approvalStages] The approval stages of the request.
  /// [isApprovalRequired] Determines whether approval is required or not.
  /// [isApprovalRequiredForExtension] Determines whether approval is required for assignment extension.
  /// [isRequestorJustificationRequired] Determine whether requestor justification is required.
  ApprovalSettingsResponse({
    this.approvalMode,
    this.approvalStages,
    this.isApprovalRequired,
    this.isApprovalRequiredForExtension,
    this.isRequestorJustificationRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalMode': ?approvalMode,
      'approvalStages': ?approvalStages == null ? null : pulumi.Input.encodeList<ApprovalStageResponse, Map<String, dynamic>>(approvalStages!, (value) => value.toMap()),
      'isApprovalRequired': ?isApprovalRequired,
      'isApprovalRequiredForExtension': ?isApprovalRequiredForExtension,
      'isRequestorJustificationRequired': ?isRequestorJustificationRequired,
    };
  }

  factory ApprovalSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ApprovalSettingsResponse(
      approvalMode: map['approvalMode'] == null ? null : map['approvalMode'] as String,
      approvalStages: map['approvalStages'] == null ? null : pulumi.Input.decodeList<ApprovalStageResponse>(map['approvalStages'], (value) => ApprovalStageResponse.fromMap((value as Map).cast<String, dynamic>())),
      isApprovalRequired: map['isApprovalRequired'] == null ? null : map['isApprovalRequired'] as bool,
      isApprovalRequiredForExtension: map['isApprovalRequiredForExtension'] == null ? null : map['isApprovalRequiredForExtension'] as bool,
      isRequestorJustificationRequired: map['isRequestorJustificationRequired'] == null ? null : map['isRequestorJustificationRequired'] as bool,
    );
  }
}

