// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_release_config_recent_scheduled_release_record_error_status.dart';

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

  /// Creates a new [RepositoryReleaseConfigRecentScheduledReleaseRecord].
  /// [compilationResult] (Output)
  /// [errorStatuses] (Output)
  /// [releaseTime] (Output)
  RepositoryReleaseConfigRecentScheduledReleaseRecord({
    this.compilationResult,
    this.errorStatuses,
    this.releaseTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compilationResult': ?compilationResult,
      'errorStatuses': ?errorStatuses == null
          ? null
          : pulumi.Input.encodeList<
              RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus,
              Map<String, dynamic>
            >(errorStatuses!, (value) => value.toMap()),
      'releaseTime': ?releaseTime,
    };
  }

  factory RepositoryReleaseConfigRecentScheduledReleaseRecord.fromMap(
    Map<String, dynamic> map,
  ) {
    return RepositoryReleaseConfigRecentScheduledReleaseRecord(
      compilationResult: map['compilationResult'] == null
          ? null
          : map['compilationResult'] as String,
      errorStatuses: map['errorStatuses'] == null
          ? null
          : pulumi.Input.decodeList<
              RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus
            >(
              map['errorStatuses'],
              (value) =>
                  RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      releaseTime: map['releaseTime'] == null
          ? null
          : map['releaseTime'] as String,
    );
  }
}
