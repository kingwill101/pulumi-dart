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
    required String environmentName,
    required String httpRouteName,
    required String resourceGroupName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      httpRouteName = pulumi.Input.asInput<String>(httpRouteName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'httpRouteName': httpRouteName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHttpRouteConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpRouteConfigArgs(
      environmentName: map['environmentName'] as String,
      httpRouteName: map['httpRouteName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

