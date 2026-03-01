// ignore_for_file: unused_element, unnecessary_cast

/// Represents an integer value range.
class HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1 {
  /// End of the range (exclusive)
  final int end;

  /// Start of the range (inclusive)
  final int start;

  /// Creates a new [HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1].
  /// [end] End of the range (exclusive)
  /// [start] Start of the range (inclusive)
  HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
