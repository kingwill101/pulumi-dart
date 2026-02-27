// ignore_for_file: unused_element, unnecessary_cast

/// Represents an integer value range.
class HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1 {
  /// End of the range (exclusive)
  final int? end;

  /// Start of the range (inclusive)
  final int? start;

  HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endValue = end;
    if (endValue != null) {
      map['end'] = endValue;
    }
    final startValue = start;
    if (startValue != null) {
      map['start'] = startValue;
    }
    return map;
  }

  factory HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1(
      end: map['end'] == null ? null : map['end'] as int,
      start: map['start'] == null ? null : map['start'] as int,
    );
  }
}
