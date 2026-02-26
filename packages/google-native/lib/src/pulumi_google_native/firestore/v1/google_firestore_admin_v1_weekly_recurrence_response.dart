// ignore_for_file: unused_element, unnecessary_cast

/// Represents a recurring schedule that runs on a specified day of the week. The time zone is UTC.
class GoogleFirestoreAdminV1WeeklyRecurrenceResponse {
  /// The day of week to run. DAY_OF_WEEK_UNSPECIFIED is not allowed.
  final String day;

  GoogleFirestoreAdminV1WeeklyRecurrenceResponse({
    required this.day,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day;
    return map;
  }

  factory GoogleFirestoreAdminV1WeeklyRecurrenceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1WeeklyRecurrenceResponse(
      day: map['day'] as String,
    );
  }
}
