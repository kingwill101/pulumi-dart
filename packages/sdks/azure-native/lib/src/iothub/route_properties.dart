// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a routing rule that your IoT hub uses to route messages to endpoints.
class RouteProperties {
  /// The condition that is evaluated to apply the routing rule. If no condition is provided, it evaluates to true by default. For grammar, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language
  final pulumi.Input<String>? condition;

  /// The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed.
  final pulumi.Input<List<String>> endpointNames;

  /// Used to specify whether a route is enabled.
  final pulumi.Input<bool> isEnabled;

  /// The name of the route. The name can only include alphanumeric characters, periods, underscores, hyphens, has a maximum length of 64 characters, and must be unique.
  final pulumi.Input<String> name;

  /// The source that the routing rule is to be applied to, such as DeviceMessages.
  final pulumi.Input<String> source;

  /// Creates a new [RouteProperties].
  /// [condition] The condition that is evaluated to apply the routing rule. If no condition is provided, it evaluates to true by default. For grammar, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language
  /// [endpointNames] The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed.
  /// [isEnabled] Used to specify whether a route is enabled.
  /// [name] The name of the route. The name can only include alphanumeric characters, periods, underscores, hyphens, has a maximum length of 64 characters, and must be unique.
  /// [source] The source that the routing rule is to be applied to, such as DeviceMessages.
  RouteProperties({
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

  factory RouteProperties.fromMap(Map<String, dynamic> map) {
    return RouteProperties(
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointNames: pulumi.Input.fromValue(
        (map['endpointNames'] as List).cast<String>(),
      ),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
