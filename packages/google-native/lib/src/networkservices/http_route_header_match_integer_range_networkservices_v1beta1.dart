// ignore_for_file: unused_element, unnecessary_cast

/// Represents an integer value range.
class HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1 {
  /// End of the range (exclusive)
  final int? end;

  /// Start of the range (inclusive)
  final int? start;

  /// Creates a new [HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1].
  /// [end] End of the range (exclusive)
  /// [start] Start of the range (inclusive)
  HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': ?end, 'start': ?start};
  }

  factory HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1(
      end: map['end'] == null ? null : map['end'] as int,
      start: map['start'] == null ? null : map['start'] as int,
    );
  }
}
