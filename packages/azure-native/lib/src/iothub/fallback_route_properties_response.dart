// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the fallback route. IoT Hub uses these properties when it routes messages to the fallback endpoint.
class FallbackRoutePropertiesResponse {
  /// The condition which is evaluated in order to apply the fallback route. If the condition is not provided it will evaluate to true by default. For grammar, See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language
  final String? condition;
  /// The list of endpoints to which the messages that satisfy the condition are routed to. Currently only 1 endpoint is allowed.
  final List<String> endpointNames;
  /// Used to specify whether the fallback route is enabled.
  final bool isEnabled;
  /// The name of the route. The name can only include alphanumeric characters, periods, underscores, hyphens, has a maximum length of 64 characters, and must be unique.
  final String? name;
  /// The source to which the routing rule is to be applied to. For example, DeviceMessages
  final String source;

  /// Creates a new [FallbackRoutePropertiesResponse].
  /// [condition] The condition which is evaluated in order to apply the fallback route. If the condition is not provided it will evaluate to true by default. For grammar, See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language
  /// [endpointNames] The list of endpoints to which the messages that satisfy the condition are routed to. Currently only 1 endpoint is allowed.
  /// [isEnabled] Used to specify whether the fallback route is enabled.
  /// [name] The name of the route. The name can only include alphanumeric characters, periods, underscores, hyphens, has a maximum length of 64 characters, and must be unique.
  /// [source] The source to which the routing rule is to be applied to. For example, DeviceMessages
  FallbackRoutePropertiesResponse({
    this.condition,
    required this.endpointNames,
    required this.isEnabled,
    this.name,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'endpointNames': endpointNames,
      'isEnabled': isEnabled,
      'name': ?name,
      'source': source,
    };
  }

  factory FallbackRoutePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FallbackRoutePropertiesResponse(
      condition: map['condition'] == null ? null : map['condition'] as String,
      endpointNames: (map['endpointNames'] as List).cast<String>(),
      isEnabled: map['isEnabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      source: map['source'] as String,
    );
  }
}

