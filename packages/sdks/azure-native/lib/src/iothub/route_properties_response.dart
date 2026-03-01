// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a routing rule that your IoT hub uses to route messages to endpoints.
class RoutePropertiesResponse {
  /// The condition that is evaluated to apply the routing rule. If no condition is provided, it evaluates to true by default. For grammar, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language
  final String? condition;
  /// The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed.
  final List<String> endpointNames;
  /// Used to specify whether a route is enabled.
  final bool isEnabled;
  /// The name of the route. The name can only include alphanumeric characters, periods, underscores, hyphens, has a maximum length of 64 characters, and must be unique.
  final String name;
  /// The source that the routing rule is to be applied to, such as DeviceMessages.
  final String source;

  /// Creates a new [RoutePropertiesResponse].
  /// [condition] The condition that is evaluated to apply the routing rule. If no condition is provided, it evaluates to true by default. For grammar, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language
  /// [endpointNames] The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed.
  /// [isEnabled] Used to specify whether a route is enabled.
  /// [name] The name of the route. The name can only include alphanumeric characters, periods, underscores, hyphens, has a maximum length of 64 characters, and must be unique.
  /// [source] The source that the routing rule is to be applied to, such as DeviceMessages.
  RoutePropertiesResponse({
    this.condition,
    required this.endpointNames,
    required this.isEnabled,
    required this.name,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'endpointNames': endpointNames,
      'isEnabled': isEnabled,
      'name': name,
      'source': source,
    };
  }

  factory RoutePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RoutePropertiesResponse(
      condition: map['condition'] == null ? null : map['condition'] as String,
      endpointNames: (map['endpointNames'] as List).cast<String>(),
      isEnabled: map['isEnabled'] as bool,
      name: map['name'] as String,
      source: map['source'] as String,
    );
  }
}

