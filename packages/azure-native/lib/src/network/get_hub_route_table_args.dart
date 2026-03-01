// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_hub_route_table_args_doc}
/// Arguments for getHubRouteTable.
/// {@endtemplate}
/// {@macro pulumi_network_get_hub_route_table_args_doc}
class GetHubRouteTableArgs {
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the RouteTable.
  final pulumi.Input<String> routeTableName;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetHubRouteTableArgs].
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [routeTableName] The name of the RouteTable.
  /// [virtualHubName] The name of the VirtualHub.
  GetHubRouteTableArgs({
    required String resourceGroupName,
    required String routeTableName,
    required String virtualHubName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeTableName = pulumi.Input.asInput<String>(routeTableName),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'routeTableName': routeTableName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetHubRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return GetHubRouteTableArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      routeTableName: map['routeTableName'] as String,
      virtualHubName: map['virtualHubName'] as String,
    );
  }
}

