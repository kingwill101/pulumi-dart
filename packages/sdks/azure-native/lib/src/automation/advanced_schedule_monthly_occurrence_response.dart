// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the create advanced schedule monthly occurrence.
class AdvancedScheduleMonthlyOccurrenceResponse {
  /// Day of the occurrence. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
  final String? day;
  /// Occurrence of the week within the month. Must be between 1 and 5
  final int? occurrence;

  /// Creates a new [AdvancedScheduleMonthlyOccurrenceResponse].
  /// [day] Day of the occurrence. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
  /// [occurrence] Occurrence of the week within the month. Must be between 1 and 5
  AdvancedScheduleMonthlyOccurrenceResponse({
    this.day,
    this.occurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'occurrence': ?occurrence,
    };
  }

  factory AdvancedScheduleMonthlyOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedScheduleMonthlyOccurrenceResponse(
      day: map['day'] == null ? null : map['day'] as String,
      occurrence: map['occurrence'] == null ? null : map['occurrence'] as int,
    );
  }
}

