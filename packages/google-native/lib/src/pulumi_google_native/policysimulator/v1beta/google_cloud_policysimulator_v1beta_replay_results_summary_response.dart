// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_date_response9.dart';

/// Summary statistics about the replayed log entries.
class GoogleCloudPolicysimulatorV1betaReplayResultsSummaryResponse {
  /// The number of replayed log entries with a difference between baseline and simulated policies.
  final int differenceCount;

  /// The number of log entries that could not be replayed.
  final int errorCount;

  /// The total number of log entries replayed.
  final int logCount;

  /// The date of the newest log entry replayed.
  final GoogleTypeDateResponse9 newestDate;

  /// The date of the oldest log entry replayed.
  final GoogleTypeDateResponse9 oldestDate;

  /// The number of replayed log entries with no difference between baseline and simulated policies.
  final int unchangedCount;

  GoogleCloudPolicysimulatorV1betaReplayResultsSummaryResponse({
    required this.differenceCount,
    required this.errorCount,
    required this.logCount,
    required this.newestDate,
    required this.oldestDate,
    required this.unchangedCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['differenceCount'] = differenceCount;
    map['errorCount'] = errorCount;
    map['logCount'] = logCount;
    map['newestDate'] = newestDate.toMap();
    map['oldestDate'] = oldestDate.toMap();
    map['unchangedCount'] = unchangedCount;
    return map;
  }

  factory GoogleCloudPolicysimulatorV1betaReplayResultsSummaryResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudPolicysimulatorV1betaReplayResultsSummaryResponse(
      differenceCount: map['differenceCount'] as int,
      errorCount: map['errorCount'] as int,
      logCount: map['logCount'] as int,
      newestDate: GoogleTypeDateResponse9.fromMap(
          (map['newestDate'] as Map).cast<String, dynamic>()),
      oldestDate: GoogleTypeDateResponse9.fromMap(
          (map['oldestDate'] as Map).cast<String, dynamic>()),
      unchangedCount: map['unchangedCount'] as int,
    );
  }
}
