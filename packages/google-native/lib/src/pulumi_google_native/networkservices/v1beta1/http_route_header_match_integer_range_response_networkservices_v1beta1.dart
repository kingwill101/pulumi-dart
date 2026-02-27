// ignore_for_file: unused_element, unnecessary_cast

/// Represents an integer value range.
class HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1 {
  /// End of the range (exclusive)
  final int end;

  /// Start of the range (inclusive)
  final int start;

  HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['start'] = start;
    return map;
  }

  factory HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
