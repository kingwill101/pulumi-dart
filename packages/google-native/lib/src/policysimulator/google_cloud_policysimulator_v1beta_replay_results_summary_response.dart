// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_date_response_policysimulator_v1beta.dart';

/// Summary statistics about the replayed log entries.
class GoogleCloudPolicysimulatorV1betaReplayResultsSummaryResponse {
  /// The number of replayed log entries with a difference between baseline and simulated policies.
  final int differenceCount;

  /// The number of log entries that could not be replayed.
  final int errorCount;

  /// The total number of log entries replayed.
  final int logCount;

  /// The date of the newest log entry replayed.
  final GoogleTypeDateResponsePolicysimulatorV1beta newestDate;

  /// The date of the oldest log entry replayed.
  final GoogleTypeDateResponsePolicysimulatorV1beta oldestDate;

  /// The number of replayed log entries with no difference between baseline and simulated policies.
  final int unchangedCount;

  /// Creates a new [GoogleCloudPolicysimulatorV1betaReplayResultsSummaryResponse].
  /// [differenceCount] The number of replayed log entries with a difference between baseline and simulated policies.
  /// [errorCount] The number of log entries that could not be replayed.
  /// [logCount] The total number of log entries replayed.
  /// [newestDate] The date of the newest log entry replayed.
  /// [oldestDate] The date of the oldest log entry replayed.
  /// [unchangedCount] The number of replayed log entries with no difference between baseline and simulated policies.
  GoogleCloudPolicysimulatorV1betaReplayResultsSummaryResponse({
    required this.differenceCount,
    required this.errorCount,
    required this.logCount,
    required this.newestDate,
    required this.oldestDate,
    required this.unchangedCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'differenceCount': differenceCount,
      'errorCount': errorCount,
      'logCount': logCount,
      'newestDate': newestDate.toMap(),
      'oldestDate': oldestDate.toMap(),
      'unchangedCount': unchangedCount,
    };
  }

  factory GoogleCloudPolicysimulatorV1betaReplayResultsSummaryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudPolicysimulatorV1betaReplayResultsSummaryResponse(
      differenceCount: map['differenceCount'] as int,
      errorCount: map['errorCount'] as int,
      logCount: map['logCount'] as int,
      newestDate: GoogleTypeDateResponsePolicysimulatorV1beta.fromMap(
        (map['newestDate'] as Map).cast<String, dynamic>(),
      ),
      oldestDate: GoogleTypeDateResponsePolicysimulatorV1beta.fromMap(
        (map['oldestDate'] as Map).cast<String, dynamic>(),
      ),
      unchangedCount: map['unchangedCount'] as int,
    );
  }
}
