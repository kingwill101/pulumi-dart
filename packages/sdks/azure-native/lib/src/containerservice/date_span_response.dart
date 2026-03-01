// ignore_for_file: unused_element, unnecessary_cast


/// A date range. For example, between '2022-12-23' and '2023-01-05'.
class DateSpanResponse {
  /// The end date of the date span.
  final String end;
  /// The start date of the date span.
  final String start;

  /// Creates a new [DateSpanResponse].
  /// [end] The end date of the date span.
  /// [start] The start date of the date span.
  DateSpanResponse({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory DateSpanResponse.fromMap(Map<String, dynamic> map) {
    return DateSpanResponse(
      end: map['end'] as String,
      start: map['start'] as String,
    );
  }
}

