// ignore_for_file: unused_element, unnecessary_cast


/// Represents an integer value range.
class HttpRouteHeaderMatchIntegerRange {
  /// End of the range (exclusive)
  final int? end;
  /// Start of the range (inclusive)
  final int? start;

  /// Creates a new [HttpRouteHeaderMatchIntegerRange].
  /// [end] End of the range (exclusive)
  /// [start] Start of the range (inclusive)
  HttpRouteHeaderMatchIntegerRange({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'start': ?start,
    };
  }

  factory HttpRouteHeaderMatchIntegerRange.fromMap(Map<String, dynamic> map) {
    return HttpRouteHeaderMatchIntegerRange(
      end: map['end'] == null ? null : map['end'] as int,
      start: map['start'] == null ? null : map['start'] as int,
    );
  }
}

