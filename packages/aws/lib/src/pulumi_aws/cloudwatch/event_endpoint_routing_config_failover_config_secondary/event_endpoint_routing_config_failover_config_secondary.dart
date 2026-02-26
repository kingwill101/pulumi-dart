// ignore_for_file: unused_element, unnecessary_cast

class EventEndpointRoutingConfigFailoverConfigSecondary {
  /// The name of the secondary Region.
  final String? route;

  EventEndpointRoutingConfigFailoverConfigSecondary({
    this.route,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final routeValue = route;
    if (routeValue != null) {
      map['route'] = routeValue;
    }
    return map;
  }

  factory EventEndpointRoutingConfigFailoverConfigSecondary.fromMap(
      Map<String, dynamic> map) {
    return EventEndpointRoutingConfigFailoverConfigSecondary(
      route: map['route'] == null ? null : map['route'] as String,
    );
  }
}
