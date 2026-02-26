// ignore_for_file: unused_element, unnecessary_cast

/// Represents an integer value range.
class HttpRouteHeaderMatchIntegerRangeResponse2 {
  /// End of the range (exclusive)
  final int end;

  /// Start of the range (inclusive)
  final int start;

  HttpRouteHeaderMatchIntegerRangeResponse2({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['start'] = start;
    return map;
  }

  factory HttpRouteHeaderMatchIntegerRangeResponse2.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteHeaderMatchIntegerRangeResponse2(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
