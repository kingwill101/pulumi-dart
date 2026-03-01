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
    required pulumi.Output<String> gatewayName,
    pulumi.Output<GatewayRouteConfigProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? routeConfigName,
    required pulumi.Output<String> serviceName,
  }) :
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      properties = pulumi.Input.asOptionalInput<GatewayRouteConfigProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeConfigName = pulumi.Input.asOptionalInput<String>(routeConfigName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': gatewayName,
      'properties': ?pulumi.Input.mapOptionalInputValue<GatewayRouteConfigProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'routeConfigName': ?routeConfigName,
      'serviceName': serviceName,
    };
  }

  factory GatewayRouteConfigArgs.fromMap(Map<String, dynamic> map) {
    return GatewayRouteConfigArgs(
      gatewayName: pulumi.Output.create<String>(map['gatewayName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<GatewayRouteConfigProperties>(GatewayRouteConfigProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeConfigName: map['routeConfigName'] == null ? null : pulumi.Output.create<String>(map['routeConfigName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

