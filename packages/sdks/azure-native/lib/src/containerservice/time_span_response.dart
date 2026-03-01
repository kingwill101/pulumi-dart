// ignore_for_file: unused_element, unnecessary_cast


/// A time range. For example, between 2021-05-25T13:00:00Z and 2021-05-25T14:00:00Z.
class TimeSpanResponse {
  /// The end of a time span
  final String? end;
  /// The start of a time span
  final String? start;

  /// Creates a new [TimeSpanResponse].
  /// [end] The end of a time span
  /// [start] The start of a time span
  TimeSpanResponse({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'start': ?start,
    };
  }

  factory TimeSpanResponse.fromMap(Map<String, dynamic> map) {
    return TimeSpanResponse(
      end: map['end'] == null ? null : map['end'] as String,
      start: map['start'] == null ? null : map['start'] as String,
    );
  }
}

