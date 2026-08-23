// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appmesh_get_gateway_route_get_gateway_route_args_doc}
/// Arguments for getGatewayRoute.
/// {@endtemplate}
/// {@macro pulumi_appmesh_get_gateway_route_get_gateway_route_args_doc}
class GetGatewayRouteArgs {
  /// Name of the service mesh in which the virtual gateway exists.
  final pulumi.Input<String> meshName;
  /// AWS account ID of the service mesh's owner.
  final pulumi.Input<String>? meshOwner;
  /// Name of the gateway route.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the virtual gateway in which the route exists.
  final pulumi.Input<String> virtualGatewayName;

  /// Creates a new [GetGatewayRouteArgs].
  /// [meshName] Name of the service mesh in which the virtual gateway exists.
  /// [meshOwner] AWS account ID of the service mesh's owner.
  /// [name] Name of the gateway route.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags.
  /// [virtualGatewayName] Name of the virtual gateway in which the route exists.
  const GetGatewayRouteArgs({
    required this.meshName,
    this.meshOwner,
    required this.name,
    this.region,
    this.tags,
    required this.virtualGatewayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshName': meshName,
      'meshOwner': ?meshOwner,
      'name': name,
      'region': ?region,
      'tags': ?tags,
      'virtualGatewayName': virtualGatewayName,
    };
  }

  factory GetGatewayRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteArgs(
      meshName: pulumi.Input.fromValue(map['meshName'] as String),
      meshOwner: (() { final guardedValue = map['meshOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualGatewayName: pulumi.Input.fromValue(map['virtualGatewayName'] as String),
    );
  }
}
