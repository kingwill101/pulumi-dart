// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_http_route_config_args_doc}
/// Arguments for getHttpRouteConfig.
/// {@endtemplate}
/// {@macro pulumi_app_get_http_route_config_args_doc}
class GetHttpRouteConfigArgs {
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// Name of the Http Route Config Resource.
  final pulumi.Input<String> httpRouteName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHttpRouteConfigArgs].
  /// [environmentName] Name of the Managed Environment.
  /// [httpRouteName] Name of the Http Route Config Resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetHttpRouteConfigArgs({
    required this.environmentName,
    required this.httpRouteName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'httpRouteName': httpRouteName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHttpRouteConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpRouteConfigArgs(
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      httpRouteName: pulumi.Input.fromValue(map['httpRouteName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

