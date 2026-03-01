// ignore_for_file: unused_element, unnecessary_cast

/// Represents an integer value range.
class HttpRouteHeaderMatchIntegerRangeResponse {
  /// End of the range (exclusive)
  final int end;

  /// Start of the range (inclusive)
  final int start;

  /// Creates a new [HttpRouteHeaderMatchIntegerRangeResponse].
  /// [end] End of the range (exclusive)
  /// [start] Start of the range (inclusive)
  HttpRouteHeaderMatchIntegerRangeResponse({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory HttpRouteHeaderMatchIntegerRangeResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return HttpRouteHeaderMatchIntegerRangeResponse(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
