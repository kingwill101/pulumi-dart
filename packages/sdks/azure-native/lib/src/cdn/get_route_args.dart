// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_route_args_doc}
/// Arguments for getRoute.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_route_args_doc}
class GetRouteArgs {
  /// Name of the endpoint under the profile which is unique globally.
  final pulumi.Input<String> endpointName;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the routing rule.
  final pulumi.Input<String> routeName;

  /// Creates a new [GetRouteArgs].
  /// [endpointName] Name of the endpoint under the profile which is unique globally.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [routeName] Name of the routing rule.
  GetRouteArgs({
    required pulumi.Output<String> endpointName,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> routeName,
  }) :
      endpointName = pulumi.Input.asInput<String>(endpointName),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeName = pulumi.Input.asInput<String>(routeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'routeName': routeName,
    };
  }

  factory GetRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs(
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeName: pulumi.Output.create<String>(map['routeName'] as String),
    );
  }
}

