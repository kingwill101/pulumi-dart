// ignore_for_file: unused_element, unnecessary_cast

import 'google_firestore_admin_v1_weekly_recurrence_day.dart';

/// Represents a recurring schedule that runs on a specified day of the week. The time zone is UTC.
class GoogleFirestoreAdminV1WeeklyRecurrence {
  /// The day of week to run. DAY_OF_WEEK_UNSPECIFIED is not allowed.
  final GoogleFirestoreAdminV1WeeklyRecurrenceDay? day;

  GoogleFirestoreAdminV1WeeklyRecurrence({
    this.day,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayValue = day;
    if (dayValue != null) {
      map['day'] = dayValue.value;
    }
    return map;
  }

  factory GoogleFirestoreAdminV1WeeklyRecurrence.fromMap(
      Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1WeeklyRecurrence(
      day: map['day'] == null
          ? null
          : GoogleFirestoreAdminV1WeeklyRecurrenceDay.fromValue(
              map['day'] as String),
    );
  }
}
