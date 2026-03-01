// ignore_for_file: unused_element, unnecessary_cast

import 'api_error_response.dart';

/// Describes the properties of an virtual machine instance view for available patch summary.
class AvailablePatchSummaryResponse {
  /// The activity ID of the operation that produced this result. It is used to correlate across CRP and extension logs.
  final String assessmentActivityId;
  /// The number of critical or security patches that have been detected as available and not yet installed.
  final int criticalAndSecurityPatchCount;
  /// The errors that were encountered during execution of the operation. The details array contains the list of them.
  final ApiErrorResponse error;
  /// The UTC timestamp when the operation began.
  final String lastModifiedTime;
  /// The number of all available patches excluding critical and security.
  final int otherPatchCount;
  /// The overall reboot status of the VM. It will be true when partially installed patches require a reboot to complete installation but the reboot has not yet occurred.
  final bool rebootPending;
  /// The UTC timestamp when the operation began.
  final String startTime;
  /// The overall success or failure status of the operation. It remains "InProgress" until the operation completes. At that point it will become "Unknown", "Failed", "Succeeded", or "CompletedWithWarnings."
  final String status;

  /// Creates a new [AvailablePatchSummaryResponse].
  /// [assessmentActivityId] The activity ID of the operation that produced this result. It is used to correlate across CRP and extension logs.
  /// [criticalAndSecurityPatchCount] The number of critical or security patches that have been detected as available and not yet installed.
  /// [error] The errors that were encountered during execution of the operation. The details array contains the list of them.
  /// [lastModifiedTime] The UTC timestamp when the operation began.
  /// [otherPatchCount] The number of all available patches excluding critical and security.
  /// [rebootPending] The overall reboot status of the VM. It will be true when partially installed patches require a reboot to complete installation but the reboot has not yet occurred.
  /// [startTime] The UTC timestamp when the operation began.
  /// [status] The overall success or failure status of the operation. It remains "InProgress" until the operation completes. At that point it will become "Unknown", "Failed", "Succeeded", or "CompletedWithWarnings."
  AvailablePatchSummaryResponse({
    required this.assessmentActivityId,
    required this.criticalAndSecurityPatchCount,
    required this.error,
    required this.lastModifiedTime,
    required this.otherPatchCount,
    required this.rebootPending,
    required this.startTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentActivityId': assessmentActivityId,
      'criticalAndSecurityPatchCount': criticalAndSecurityPatchCount,
      'error': error.toMap(),
      'lastModifiedTime': lastModifiedTime,
      'otherPatchCount': otherPatchCount,
      'rebootPending': rebootPending,
      'startTime': startTime,
      'status': status,
    };
  }

  factory AvailablePatchSummaryResponse.fromMap(Map<String, dynamic> map) {
    return AvailablePatchSummaryResponse(
      assessmentActivityId: map['assessmentActivityId'] as String,
      criticalAndSecurityPatchCount: map['criticalAndSecurityPatchCount'] as int,
      error: ApiErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      lastModifiedTime: map['lastModifiedTime'] as String,
      otherPatchCount: map['otherPatchCount'] as int,
      rebootPending: map['rebootPending'] as bool,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
    );
  }
}

