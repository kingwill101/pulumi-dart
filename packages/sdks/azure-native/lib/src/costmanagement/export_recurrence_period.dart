// ignore_for_file: unused_element, unnecessary_cast


/// The start and end date for recurrence schedule.
class ExportRecurrencePeriod {
  /// The start date of recurrence.
  final String from;
  /// The end date of recurrence.
  final String? to;

  /// Creates a new [ExportRecurrencePeriod].
  /// [from] The start date of recurrence.
  /// [to] The end date of recurrence.
  ExportRecurrencePeriod({
    required this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': ?to,
    };
  }

  factory ExportRecurrencePeriod.fromMap(Map<String, dynamic> map) {
    return ExportRecurrencePeriod(
      from: map['from'] as String,
      to: map['to'] == null ? null : map['to'] as String,
    );
  }
}

