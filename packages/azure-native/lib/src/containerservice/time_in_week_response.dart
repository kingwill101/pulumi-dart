// ignore_for_file: unused_element, unnecessary_cast


/// Time in a week.
class TimeInWeekResponse {
  /// The day of the week.
  final String? day;
  /// A list of hours in the day used to identify a time range. Each integer hour represents a time range beginning at 0m after the hour ending at the next hour (non-inclusive). 0 corresponds to 00:00 UTC, 23 corresponds to 23:00 UTC. Specifying [0, 1] means the 00:00 - 02:00 UTC time range.
  final List<int>? hourSlots;

  /// Creates a new [TimeInWeekResponse].
  /// [day] The day of the week.
  /// [hourSlots] A list of hours in the day used to identify a time range. Each integer hour represents a time range beginning at 0m after the hour ending at the next hour (non-inclusive). 0 corresponds to 00:00 UTC, 23 corresponds to 23:00 UTC. Specifying [0, 1] means the 00:00 - 02:00 UTC time range.
  TimeInWeekResponse({
    this.day,
    this.hourSlots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'hourSlots': ?hourSlots,
    };
  }

  factory TimeInWeekResponse.fromMap(Map<String, dynamic> map) {
    return TimeInWeekResponse(
      day: map['day'] == null ? null : map['day'] as String,
      hourSlots: map['hourSlots'] == null ? null : (map['hourSlots'] as List).cast<int>(),
    );
  }
}

