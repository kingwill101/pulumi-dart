// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventEndpointRoutingConfigFailoverConfigSecondary {
  /// The name of the secondary Region.
  final pulumi.Input<String>? route;

  /// Creates a new [EventEndpointRoutingConfigFailoverConfigSecondary].
  /// [route] The name of the secondary Region.
  const EventEndpointRoutingConfigFailoverConfigSecondary({
    this.route,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'route': ?route,
    };
  }

  factory EventEndpointRoutingConfigFailoverConfigSecondary.fromMap(Map<String, dynamic> map) {
    return EventEndpointRoutingConfigFailoverConfigSecondary(
      route: (() { final guardedValue = map['route']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
