// ignore_for_file: unused_element, unnecessary_cast


class IoTHubFallbackRoute {
  /// The condition that is evaluated to apply the routing rule. Defaults to `true`. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>.
  final String? condition;
  /// Used to specify whether the fallback route is enabled. Defaults to `true`.
  final bool? enabled;
  /// The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed.
  final List<String>? endpointNames;
  /// The source that the routing rule is to be applied to, such as `DeviceMessages`. Possible values include: `Invalid`, `DeviceMessages`, `TwinChangeEvents`, `DeviceLifecycleEvents`, `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents` and `DigitalTwinChangeEvents`. Defaults to `DeviceMessages`.
  final String? source;

  /// Creates a new [IoTHubFallbackRoute].
  /// [condition] The condition that is evaluated to apply the routing rule. Defaults to `true`. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>.
  /// [enabled] Used to specify whether the fallback route is enabled. Defaults to `true`.
  /// [endpointNames] The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed.
  /// [source] The source that the routing rule is to be applied to, such as `DeviceMessages`. Possible values include: `Invalid`, `DeviceMessages`, `TwinChangeEvents`, `DeviceLifecycleEvents`, `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents` and `DigitalTwinChangeEvents`. Defaults to `DeviceMessages`.
  IoTHubFallbackRoute({
    this.condition,
    this.enabled,
    this.endpointNames,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'enabled': ?enabled,
      'endpointNames': ?endpointNames,
      'source': ?source,
    };
  }

  factory IoTHubFallbackRoute.fromMap(Map<String, dynamic> map) {
    return IoTHubFallbackRoute(
      condition: map['condition'] == null ? null : map['condition'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      endpointNames: map['endpointNames'] == null ? null : (map['endpointNames'] as List).cast<String>(),
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

