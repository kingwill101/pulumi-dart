// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_fallback_route_fallback_route_args_doc}
/// The set of arguments for FallbackRoute.
/// {@endtemplate}
/// {@macro pulumi_iot_fallback_route_fallback_route_args_doc}
class FallbackRouteArgs {
  /// The condition that is evaluated to apply the routing rule. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. Defaults to `true`.
  final pulumi.Input<String>? condition;
  /// Used to specify whether the fallback route is enabled.
  final pulumi.Input<bool> enabled;
  /// The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed.
  final pulumi.Input<String> endpointNames;
  /// The name of the IoTHub to which this Fallback Route belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubName;
  /// The name of the resource group under which the IotHub Storage Container Endpoint resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`. Defaults to `DeviceMessages`.
  final pulumi.Input<String>? source;

  /// Creates a new [FallbackRouteArgs].
  /// [condition] The condition that is evaluated to apply the routing rule. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. Defaults to `true`.
  /// [enabled] Used to specify whether the fallback route is enabled.
  /// [endpointNames] The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed.
  /// [iothubName] The name of the IoTHub to which this Fallback Route belongs. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the IotHub Storage Container Endpoint resource has to be created. Changing this forces a new resource to be created.
  /// [source] The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`. Defaults to `DeviceMessages`.
  FallbackRouteArgs({
    String? condition,
    required bool enabled,
    required String endpointNames,
    required String iothubName,
    required String resourceGroupName,
    String? source,
  }) :
      condition = pulumi.Input.asOptionalInput<String>(condition),
      enabled = pulumi.Input.asInput<bool>(enabled),
      endpointNames = pulumi.Input.asInput<String>(endpointNames),
      iothubName = pulumi.Input.asInput<String>(iothubName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asOptionalInput<String>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'enabled': enabled,
      'endpointNames': endpointNames,
      'iothubName': iothubName,
      'resourceGroupName': resourceGroupName,
      'source': ?source,
    };
  }

  factory FallbackRouteArgs.fromMap(Map<String, dynamic> map) {
    return FallbackRouteArgs(
      condition: map['condition'] == null ? null : map['condition'] as String,
      enabled: map['enabled'] as bool,
      endpointNames: map['endpointNames'] as String,
      iothubName: map['iothubName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

