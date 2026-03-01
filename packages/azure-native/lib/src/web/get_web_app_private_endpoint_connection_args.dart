// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_private_endpoint_connection_args_doc}
/// Arguments for getWebAppPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_private_endpoint_connection_args_doc}
class GetWebAppPrivateEndpointConnectionArgs {
  /// Name of the site.
  final pulumi.Input<String> name;
  /// Name of the private endpoint connection.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppPrivateEndpointConnectionArgs].
  /// [name] Name of the site.
  /// [privateEndpointConnectionName] Name of the private endpoint connection.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetWebAppPrivateEndpointConnectionArgs({
    required String name,
    required String privateEndpointConnectionName,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppPrivateEndpointConnectionArgs(
      name: map['name'] as String,
      privateEndpointConnectionName: map['privateEndpointConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

