// ignore_for_file: unused_element, unnecessary_cast


/// For schedules like: 'recur every month on the first Monday' or 'recur every 3 months on last Friday'.
class RelativeMonthlyScheduleResponse {
  /// Specifies on which day of the week the maintenance occurs.
  final String dayOfWeek;
  /// Specifies the number of months between each set of occurrences.
  final int intervalMonths;
  /// The week index. Specifies on which week of the month the dayOfWeek applies.
  final String weekIndex;

  /// Creates a new [RelativeMonthlyScheduleResponse].
  /// [dayOfWeek] Specifies on which day of the week the maintenance occurs.
  /// [intervalMonths] Specifies the number of months between each set of occurrences.
  /// [weekIndex] The week index. Specifies on which week of the month the dayOfWeek applies.
  RelativeMonthlyScheduleResponse({
    required this.dayOfWeek,
    required this.intervalMonths,
    required this.weekIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'intervalMonths': intervalMonths,
      'weekIndex': weekIndex,
    };
  }

  factory RelativeMonthlyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return RelativeMonthlyScheduleResponse(
      dayOfWeek: map['dayOfWeek'] as String,
      intervalMonths: map['intervalMonths'] as int,
      weekIndex: map['weekIndex'] as String,
    );
  }
}

