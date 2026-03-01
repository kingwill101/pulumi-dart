// ignore_for_file: unused_element, unnecessary_cast

class EventEndpointRoutingConfigFailoverConfigSecondary {
  /// The name of the secondary Region.
  final String? route;

  /// Creates a new [EventEndpointRoutingConfigFailoverConfigSecondary].
  /// [route] The name of the secondary Region.
  EventEndpointRoutingConfigFailoverConfigSecondary({this.route});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'route': ?route};
  }

  factory EventEndpointRoutingConfigFailoverConfigSecondary.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventEndpointRoutingConfigFailoverConfigSecondary(
      route: map['route'] == null ? null : map['route'] as String,
    );
  }
}
