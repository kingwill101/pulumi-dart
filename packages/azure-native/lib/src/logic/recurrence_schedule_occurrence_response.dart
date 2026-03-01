// ignore_for_file: unused_element, unnecessary_cast


/// The recurrence schedule occurrence.
class RecurrenceScheduleOccurrenceResponse {
  /// The day of the week.
  final String? day;
  /// The occurrence.
  final int? occurrence;

  /// Creates a new [RecurrenceScheduleOccurrenceResponse].
  /// [day] The day of the week.
  /// [occurrence] The occurrence.
  RecurrenceScheduleOccurrenceResponse({
    this.day,
    this.occurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'occurrence': ?occurrence,
    };
  }

  factory RecurrenceScheduleOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return RecurrenceScheduleOccurrenceResponse(
      day: map['day'] == null ? null : map['day'] as String,
      occurrence: map['occurrence'] == null ? null : map['occurrence'] as int,
    );
  }
}

