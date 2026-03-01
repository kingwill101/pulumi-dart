// ignore_for_file: unused_element, unnecessary_cast

import 'api_error_response.dart';

/// Describes the properties of the last installed patch summary.
class LastPatchInstallationSummaryResponse {
  /// The errors that were encountered during execution of the operation. The details array contains the list of them.
  final ApiErrorResponse error;
  /// The number of all available patches but excluded explicitly by a customer-specified exclusion list match.
  final int excludedPatchCount;
  /// The count of patches that failed installation.
  final int failedPatchCount;
  /// The activity ID of the operation that produced this result. It is used to correlate across CRP and extension logs.
  final String installationActivityId;
  /// The count of patches that successfully installed.
  final int installedPatchCount;
  /// The UTC timestamp when the operation began.
  final String lastModifiedTime;
  /// Describes whether the operation ran out of time before it completed all its intended actions
  final bool maintenanceWindowExceeded;
  /// The number of all available patches but not going to be installed because it didn't match a classification or inclusion list entry.
  final int notSelectedPatchCount;
  /// The number of all available patches expected to be installed over the course of the patch installation operation.
  final int pendingPatchCount;
  /// The UTC timestamp when the operation began.
  final String startTime;
  /// The overall success or failure status of the operation. It remains "InProgress" until the operation completes. At that point it will become "Unknown", "Failed", "Succeeded", or "CompletedWithWarnings."
  final String status;

  /// Creates a new [LastPatchInstallationSummaryResponse].
  /// [error] The errors that were encountered during execution of the operation. The details array contains the list of them.
  /// [excludedPatchCount] The number of all available patches but excluded explicitly by a customer-specified exclusion list match.
  /// [failedPatchCount] The count of patches that failed installation.
  /// [installationActivityId] The activity ID of the operation that produced this result. It is used to correlate across CRP and extension logs.
  /// [installedPatchCount] The count of patches that successfully installed.
  /// [lastModifiedTime] The UTC timestamp when the operation began.
  /// [maintenanceWindowExceeded] Describes whether the operation ran out of time before it completed all its intended actions
  /// [notSelectedPatchCount] The number of all available patches but not going to be installed because it didn't match a classification or inclusion list entry.
  /// [pendingPatchCount] The number of all available patches expected to be installed over the course of the patch installation operation.
  /// [startTime] The UTC timestamp when the operation began.
  /// [status] The overall success or failure status of the operation. It remains "InProgress" until the operation completes. At that point it will become "Unknown", "Failed", "Succeeded", or "CompletedWithWarnings."
  LastPatchInstallationSummaryResponse({
    required this.error,
    required this.excludedPatchCount,
    required this.failedPatchCount,
    required this.installationActivityId,
    required this.installedPatchCount,
    required this.lastModifiedTime,
    required this.maintenanceWindowExceeded,
    required this.notSelectedPatchCount,
    required this.pendingPatchCount,
    required this.startTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error.toMap(),
      'excludedPatchCount': excludedPatchCount,
      'failedPatchCount': failedPatchCount,
      'installationActivityId': installationActivityId,
      'installedPatchCount': installedPatchCount,
      'lastModifiedTime': lastModifiedTime,
      'maintenanceWindowExceeded': maintenanceWindowExceeded,
      'notSelectedPatchCount': notSelectedPatchCount,
      'pendingPatchCount': pendingPatchCount,
      'startTime': startTime,
      'status': status,
    };
  }

  factory LastPatchInstallationSummaryResponse.fromMap(Map<String, dynamic> map) {
    return LastPatchInstallationSummaryResponse(
      error: ApiErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      excludedPatchCount: map['excludedPatchCount'] as int,
      failedPatchCount: map['failedPatchCount'] as int,
      installationActivityId: map['installationActivityId'] as String,
      installedPatchCount: map['installedPatchCount'] as int,
      lastModifiedTime: map['lastModifiedTime'] as String,
      maintenanceWindowExceeded: map['maintenanceWindowExceeded'] as bool,
      notSelectedPatchCount: map['notSelectedPatchCount'] as int,
      pendingPatchCount: map['pendingPatchCount'] as int,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
    );
  }
}

