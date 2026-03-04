// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec.dart';

/// {@template pulumi_appmesh_gateway_route_gateway_route_args_doc}
/// The set of arguments for GatewayRoute.
/// {@endtemplate}
/// {@macro pulumi_appmesh_gateway_route_gateway_route_args_doc}
class GatewayRouteArgs {
  /// Name of the service mesh in which to create the gateway route. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  final pulumi.Input<String>? meshOwner;

  /// Name to use for the gateway route. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Gateway route specification to apply.
  final pulumi.Input<GatewayRouteSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name of the virtual gateway to associate the gateway route with. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> virtualGatewayName;

  /// Creates a new [GatewayRouteArgs].
  /// [meshName] Name of the service mesh in which to create the gateway route. Must be between 1 and 255 characters in length.
  /// [meshOwner] AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  /// [name] Name to use for the gateway route. Must be between 1 and 255 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spec] Gateway route specification to apply.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [virtualGatewayName] Name of the virtual gateway to associate the gateway route with. Must be between 1 and 255 characters in length.
  GatewayRouteArgs({
    required this.meshName,
    this.meshOwner,
    this.name,
    this.region,
    required this.spec,
    this.tags,
    required this.virtualGatewayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshName': meshName,
      'meshOwner': ?meshOwner,
      'name': ?name,
      'region': ?region,
      'spec':
          pulumi.Input.mapInputValue<GatewayRouteSpec, Map<String, dynamic>>(
            spec,
            (value) => value.toMap(),
          ),
      'tags': ?tags,
      'virtualGatewayName': virtualGatewayName,
    };
  }

  factory GatewayRouteArgs.fromMap(Map<String, dynamic> map) {
    return GatewayRouteArgs(
      meshName: pulumi.Input.fromValue(map['meshName'] as String),
      meshOwner: (() {
        final guardedValue = map['meshOwner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spec: pulumi.Input.fromValue(
        GatewayRouteSpec.fromMap((map['spec']! as Map).cast<String, dynamic>()),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualGatewayName: pulumi.Input.fromValue(
        map['virtualGatewayName'] as String,
      ),
    );
  }
}
