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
    required pulumi.Output<String> meshName,
    pulumi.Output<String>? meshOwner,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<GatewayRouteSpec> spec,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> virtualGatewayName,
  }) :
      meshName = pulumi.Input.asInput<String>(meshName),
      meshOwner = pulumi.Input.asOptionalInput<String>(meshOwner),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      spec = pulumi.Input.asInput<GatewayRouteSpec>(spec),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualGatewayName = pulumi.Input.asInput<String>(virtualGatewayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshName': meshName,
      'meshOwner': ?meshOwner,
      'name': ?name,
      'region': ?region,
      'spec': pulumi.Input.mapInputValue<GatewayRouteSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'tags': ?tags,
      'virtualGatewayName': virtualGatewayName,
    };
  }

  factory GatewayRouteArgs.fromMap(Map<String, dynamic> map) {
    return GatewayRouteArgs(
      meshName: pulumi.Output.create<String>(map['meshName'] as String),
      meshOwner: map['meshOwner'] == null ? null : pulumi.Output.create<String>(map['meshOwner'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      spec: pulumi.Output.create<GatewayRouteSpec>(GatewayRouteSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualGatewayName: pulumi.Output.create<String>(map['virtualGatewayName'] as String),
    );
  }
}

