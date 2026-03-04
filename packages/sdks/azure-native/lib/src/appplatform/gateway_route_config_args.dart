// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_config_properties.dart';

/// {@template pulumi_appplatform_gateway_route_config_args_doc}
/// The set of arguments for GatewayRouteConfig.
/// {@endtemplate}
/// {@macro pulumi_appplatform_gateway_route_config_args_doc}
class GatewayRouteConfigArgs {
  /// The name of Spring Cloud Gateway.
  final pulumi.Input<String> gatewayName;

  /// API route config of the Spring Cloud Gateway
  final pulumi.Input<GatewayRouteConfigProperties>? properties;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Spring Cloud Gateway route config.
  final pulumi.Input<String>? routeConfigName;

  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GatewayRouteConfigArgs].
  /// [gatewayName] The name of Spring Cloud Gateway.
  /// [properties] API route config of the Spring Cloud Gateway
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [routeConfigName] The name of the Spring Cloud Gateway route config.
  /// [serviceName] The name of the Service resource.
  GatewayRouteConfigArgs({
    required this.gatewayName,
    this.properties,
    required this.resourceGroupName,
    this.routeConfigName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': gatewayName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            GatewayRouteConfigProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'routeConfigName': ?routeConfigName,
      'serviceName': serviceName,
    };
  }

  factory GatewayRouteConfigArgs.fromMap(Map<String, dynamic> map) {
    return GatewayRouteConfigArgs(
      gatewayName: pulumi.Input.fromValue(map['gatewayName'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GatewayRouteConfigProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      routeConfigName: (() {
        final guardedValue = map['routeConfigName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
