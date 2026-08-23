// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_error_response.dart';

/// Describes the properties of an virtual machine instance view for available patch summary.
class AvailablePatchSummaryResponse {
  /// The activity ID of the operation that produced this result. It is used to correlate across CRP and extension logs.
  final pulumi.Input<String> assessmentActivityId;
  /// The number of critical or security patches that have been detected as available and not yet installed.
  final pulumi.Input<int> criticalAndSecurityPatchCount;
  /// The errors that were encountered during execution of the operation. The details array contains the list of them.
  final pulumi.Input<ApiErrorResponse> error;
  /// The UTC timestamp when the operation began.
  final pulumi.Input<String> lastModifiedTime;
  /// The number of all available patches excluding critical and security.
  final pulumi.Input<int> otherPatchCount;
  /// The overall reboot status of the VM. It will be true when partially installed patches require a reboot to complete installation but the reboot has not yet occurred.
  final pulumi.Input<bool> rebootPending;
  /// The UTC timestamp when the operation began.
  final pulumi.Input<String> startTime;
  /// The overall success or failure status of the operation. It remains "InProgress" until the operation completes. At that point it will become "Unknown", "Failed", "Succeeded", or "CompletedWithWarnings."
  final pulumi.Input<String> status;

  /// Creates a new [AvailablePatchSummaryResponse].
  /// [assessmentActivityId] The activity ID of the operation that produced this result. It is used to correlate across CRP and extension logs.
  /// [criticalAndSecurityPatchCount] The number of critical or security patches that have been detected as available and not yet installed.
  /// [error] The errors that were encountered during execution of the operation. The details array contains the list of them.
  /// [lastModifiedTime] The UTC timestamp when the operation began.
  /// [otherPatchCount] The number of all available patches excluding critical and security.
  /// [rebootPending] The overall reboot status of the VM. It will be true when partially installed patches require a reboot to complete installation but the reboot has not yet occurred.
  /// [startTime] The UTC timestamp when the operation began.
  /// [status] The overall success or failure status of the operation. It remains "InProgress" until the operation completes. At that point it will become "Unknown", "Failed", "Succeeded", or "CompletedWithWarnings."
  const AvailablePatchSummaryResponse({
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
      'error': pulumi.Input.mapInputValue<ApiErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'lastModifiedTime': lastModifiedTime,
      'otherPatchCount': otherPatchCount,
      'rebootPending': rebootPending,
      'startTime': startTime,
      'status': status,
    };
  }

  factory AvailablePatchSummaryResponse.fromMap(Map<String, dynamic> map) {
    return AvailablePatchSummaryResponse(
      assessmentActivityId: pulumi.Input.fromValue(map['assessmentActivityId'] as String),
      criticalAndSecurityPatchCount: pulumi.Input.fromValue(map['criticalAndSecurityPatchCount'] as int),
      error: pulumi.Input.fromValue(ApiErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      lastModifiedTime: pulumi.Input.fromValue(map['lastModifiedTime'] as String),
      otherPatchCount: pulumi.Input.fromValue(map['otherPatchCount'] as int),
      rebootPending: pulumi.Input.fromValue(map['rebootPending'] as bool),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
