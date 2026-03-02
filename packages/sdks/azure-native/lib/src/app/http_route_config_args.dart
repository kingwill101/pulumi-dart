// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_config_properties.dart';

/// {@template pulumi_app_http_route_config_args_doc}
/// The set of arguments for HttpRouteConfig.
/// {@endtemplate}
/// {@macro pulumi_app_http_route_config_args_doc}
class HttpRouteConfigArgs {
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// Name of the Http Route Config Resource.
  final pulumi.Input<String>? httpRouteName;
  /// Http Route Config properties
  final pulumi.Input<HttpRouteConfigProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [HttpRouteConfigArgs].
  /// [environmentName] Name of the Managed Environment.
  /// [httpRouteName] Name of the Http Route Config Resource.
  /// [properties] Http Route Config properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  HttpRouteConfigArgs({
    required this.environmentName,
    this.httpRouteName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'httpRouteName': ?httpRouteName,
      'properties': ?pulumi.Input.mapOptionalInputValue<HttpRouteConfigProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory HttpRouteConfigArgs.fromMap(Map<String, dynamic> map) {
    return HttpRouteConfigArgs(
      environmentName: (map['environmentName'] as String).input(),
      httpRouteName: map['httpRouteName'] == null ? null : (map['httpRouteName'] as String).input(),
      properties: map['properties'] == null ? null : (HttpRouteConfigProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

