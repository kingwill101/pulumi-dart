// ignore_for_file: unused_element, unnecessary_cast


/// For schedules like: 'recur every month on the 15th' or 'recur every 3 months on the 20th'.
class AbsoluteMonthlySchedule {
  /// The date of the month.
  final int dayOfMonth;
  /// Specifies the number of months between each set of occurrences.
  final int intervalMonths;

  /// Creates a new [AbsoluteMonthlySchedule].
  /// [dayOfMonth] The date of the month.
  /// [intervalMonths] Specifies the number of months between each set of occurrences.
  AbsoluteMonthlySchedule({
    required this.dayOfMonth,
    required this.intervalMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': dayOfMonth,
      'intervalMonths': intervalMonths,
    };
  }

  factory AbsoluteMonthlySchedule.fromMap(Map<String, dynamic> map) {
    return AbsoluteMonthlySchedule(
      dayOfMonth: map['dayOfMonth'] as int,
      intervalMonths: map['intervalMonths'] as int,
    );
  }
}

