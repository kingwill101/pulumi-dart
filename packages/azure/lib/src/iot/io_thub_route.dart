// ignore_for_file: unused_element, unnecessary_cast


class IoTHubRoute {
  /// The condition that is evaluated to apply the routing rule. Defaults to `true`. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>.
  final String? condition;
  /// Used to specify whether a route is enabled.
  final bool enabled;
  /// The list of endpoints to which messages that satisfy the condition are routed.
  final List<String> endpointNames;
  /// The name of the route.
  final String name;
  /// The source that the routing rule is to be applied to, such as `DeviceMessages`. Possible values include: `Invalid`, `DeviceMessages`, `TwinChangeEvents`, `DeviceLifecycleEvents`, `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents` and `DigitalTwinChangeEvents`.
  final String source;

  /// Creates a new [IoTHubRoute].
  /// [condition] The condition that is evaluated to apply the routing rule. Defaults to `true`. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>.
  /// [enabled] Used to specify whether a route is enabled.
  /// [endpointNames] The list of endpoints to which messages that satisfy the condition are routed.
  /// [name] The name of the route.
  /// [source] The source that the routing rule is to be applied to, such as `DeviceMessages`. Possible values include: `Invalid`, `DeviceMessages`, `TwinChangeEvents`, `DeviceLifecycleEvents`, `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents` and `DigitalTwinChangeEvents`.
  IoTHubRoute({
    this.condition,
    required this.enabled,
    required this.endpointNames,
    required this.name,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'enabled': enabled,
      'endpointNames': endpointNames,
      'name': name,
      'source': source,
    };
  }

  factory IoTHubRoute.fromMap(Map<String, dynamic> map) {
    return IoTHubRoute(
      condition: map['condition'] == null ? null : map['condition'] as String,
      enabled: map['enabled'] as bool,
      endpointNames: (map['endpointNames'] as List).cast<String>(),
      name: map['name'] as String,
      source: map['source'] as String,
    );
  }
}

