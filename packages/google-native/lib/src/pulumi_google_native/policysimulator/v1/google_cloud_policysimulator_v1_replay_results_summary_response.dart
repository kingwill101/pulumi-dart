// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_date_response6.dart';

/// Summary statistics about the replayed log entries.
class GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse {
  /// The number of replayed log entries with a difference between baseline and simulated policies.
  final int differenceCount;

  /// The number of log entries that could not be replayed.
  final int errorCount;

  /// The total number of log entries replayed.
  final int logCount;

  /// The date of the newest log entry replayed.
  final GoogleTypeDateResponse6 newestDate;

  /// The date of the oldest log entry replayed.
  final GoogleTypeDateResponse6 oldestDate;

  /// The number of replayed log entries with no difference between baseline and simulated policies.
  final int unchangedCount;

  GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse({
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

  factory GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse(
      differenceCount: map['differenceCount'] as int,
      errorCount: map['errorCount'] as int,
      logCount: map['logCount'] as int,
      newestDate: GoogleTypeDateResponse6.fromMap(
          (map['newestDate'] as Map).cast<String, dynamic>()),
      oldestDate: GoogleTypeDateResponse6.fromMap(
          (map['oldestDate'] as Map).cast<String, dynamic>()),
      unchangedCount: map['unchangedCount'] as int,
    );
  }
}
