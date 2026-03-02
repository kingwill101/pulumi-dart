// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_error_response.dart';

/// Describes the properties of the last installed patch summary.
class LastPatchInstallationSummaryResponse {
  /// The errors that were encountered during execution of the operation. The details array contains the list of them.
  final pulumi.Input<ApiErrorResponse> error;
  /// The number of all available patches but excluded explicitly by a customer-specified exclusion list match.
  final pulumi.Input<int> excludedPatchCount;
  /// The count of patches that failed installation.
  final pulumi.Input<int> failedPatchCount;
  /// The activity ID of the operation that produced this result. It is used to correlate across CRP and extension logs.
  final pulumi.Input<String> installationActivityId;
  /// The count of patches that successfully installed.
  final pulumi.Input<int> installedPatchCount;
  /// The UTC timestamp when the operation began.
  final pulumi.Input<String> lastModifiedTime;
  /// Describes whether the operation ran out of time before it completed all its intended actions
  final pulumi.Input<bool> maintenanceWindowExceeded;
  /// The number of all available patches but not going to be installed because it didn't match a classification or inclusion list entry.
  final pulumi.Input<int> notSelectedPatchCount;
  /// The number of all available patches expected to be installed over the course of the patch installation operation.
  final pulumi.Input<int> pendingPatchCount;
  /// The UTC timestamp when the operation began.
  final pulumi.Input<String> startTime;
  /// The overall success or failure status of the operation. It remains "InProgress" until the operation completes. At that point it will become "Unknown", "Failed", "Succeeded", or "CompletedWithWarnings."
  final pulumi.Input<String> status;

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
      'error': pulumi.Input.mapInputValue<ApiErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
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
      error: (ApiErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      excludedPatchCount: (map['excludedPatchCount'] as int).input(),
      failedPatchCount: (map['failedPatchCount'] as int).input(),
      installationActivityId: (map['installationActivityId'] as String).input(),
      installedPatchCount: (map['installedPatchCount'] as int).input(),
      lastModifiedTime: (map['lastModifiedTime'] as String).input(),
      maintenanceWindowExceeded: (map['maintenanceWindowExceeded'] as bool).input(),
      notSelectedPatchCount: (map['notSelectedPatchCount'] as int).input(),
      pendingPatchCount: (map['pendingPatchCount'] as int).input(),
      startTime: (map['startTime'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

