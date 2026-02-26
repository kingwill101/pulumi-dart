// ignore_for_file: unused_element, unnecessary_cast

/// Represents an integer value range.
class HttpRouteHeaderMatchIntegerRangeResponse {
  /// End of the range (exclusive)
  final int end;

  /// Start of the range (inclusive)
  final int start;

  HttpRouteHeaderMatchIntegerRangeResponse({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['start'] = start;
    return map;
  }

  factory HttpRouteHeaderMatchIntegerRangeResponse.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteHeaderMatchIntegerRangeResponse(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
