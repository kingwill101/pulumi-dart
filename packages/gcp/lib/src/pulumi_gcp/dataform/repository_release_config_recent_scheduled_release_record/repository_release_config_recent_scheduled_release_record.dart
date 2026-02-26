// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_release_config_recent_scheduled_release_record_error_status/repository_release_config_recent_scheduled_release_record_error_status.dart';

class RepositoryReleaseConfigRecentScheduledReleaseRecord {
  /// (Output)
  /// The name of the created compilation result, if one was successfully created. Must be in the format projects/*/locations/*/repositories/*/compilationResults/*.
  final String? compilationResult;

  /// (Output)
  /// The error status encountered upon this attempt to create the compilation result, if the attempt was unsuccessful.
  /// Structure is documented below.
  final List<RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus>?
      errorStatuses;

  /// (Output)
  /// The timestamp of this release attempt.
  final String? releaseTime;

  RepositoryReleaseConfigRecentScheduledReleaseRecord({
    this.compilationResult,
    this.errorStatuses,
    this.releaseTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final compilationResultValue = compilationResult;
    if (compilationResultValue != null) {
      map['compilationResult'] = compilationResultValue;
    }
    final errorStatusesValue = errorStatuses;
    if (errorStatusesValue != null) {
      map['errorStatuses'] = Input.encodeList<
          RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus,
          Map<String, dynamic>>(errorStatusesValue, (value) => value.toMap());
    }
    final releaseTimeValue = releaseTime;
    if (releaseTimeValue != null) {
      map['releaseTime'] = releaseTimeValue;
    }
    return map;
  }

  factory RepositoryReleaseConfigRecentScheduledReleaseRecord.fromMap(
      Map<String, dynamic> map) {
    return RepositoryReleaseConfigRecentScheduledReleaseRecord(
      compilationResult: map['compilationResult'] == null
          ? null
          : map['compilationResult'] as String,
      errorStatuses: map['errorStatuses'] == null
          ? null
          : Input.decodeList<
                  RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus>(
              map['errorStatuses'],
              (value) =>
                  RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus
                      .fromMap((value as Map).cast<String, dynamic>())),
      releaseTime:
          map['releaseTime'] == null ? null : map['releaseTime'] as String,
    );
  }
}
