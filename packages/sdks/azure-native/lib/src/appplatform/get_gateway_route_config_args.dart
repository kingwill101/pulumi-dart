// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_gateway_route_config_args_doc}
/// Arguments for getGatewayRouteConfig.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_gateway_route_config_args_doc}
class GetGatewayRouteConfigArgs {
  /// The name of Spring Cloud Gateway.
  final pulumi.Input<String> gatewayName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Spring Cloud Gateway route config.
  final pulumi.Input<String> routeConfigName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetGatewayRouteConfigArgs].
  /// [gatewayName] The name of Spring Cloud Gateway.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [routeConfigName] The name of the Spring Cloud Gateway route config.
  /// [serviceName] The name of the Service resource.
  const GetGatewayRouteConfigArgs({
    required this.gatewayName,
    required this.resourceGroupName,
    required this.routeConfigName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': gatewayName,
      'resourceGroupName': resourceGroupName,
      'routeConfigName': routeConfigName,
      'serviceName': serviceName,
    };
  }

  factory GetGatewayRouteConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteConfigArgs(
      gatewayName: pulumi.Input.fromValue(map['gatewayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeConfigName: pulumi.Input.fromValue(map['routeConfigName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
