// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appmesh_get_route_get_route_args_doc}
/// Arguments for getRoute.
/// {@endtemplate}
/// {@macro pulumi_appmesh_get_route_get_route_args_doc}
class GetRouteArgs {
  /// Name of the service mesh in which the virtual router exists.
  final pulumi.Input<String> meshName;
  /// AWS account ID of the service mesh's owner.
  final pulumi.Input<String>? meshOwner;
  /// Name of the route.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the virtual router in which the route exists.
  final pulumi.Input<String> virtualRouterName;

  /// Creates a new [GetRouteArgs].
  /// [meshName] Name of the service mesh in which the virtual router exists.
  /// [meshOwner] AWS account ID of the service mesh's owner.
  /// [name] Name of the route.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags.
  /// [virtualRouterName] Name of the virtual router in which the route exists.
  GetRouteArgs({
    required String meshName,
    String? meshOwner,
    required String name,
    String? region,
    Map<String, String>? tags,
    required String virtualRouterName,
  }) :
      meshName = pulumi.Input.asInput<String>(meshName),
      meshOwner = pulumi.Input.asOptionalInput<String>(meshOwner),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualRouterName = pulumi.Input.asInput<String>(virtualRouterName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshName': meshName,
      'meshOwner': ?meshOwner,
      'name': name,
      'region': ?region,
      'tags': ?tags,
      'virtualRouterName': virtualRouterName,
    };
  }

  factory GetRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs(
      meshName: map['meshName'] as String,
      meshOwner: map['meshOwner'] == null ? null : map['meshOwner'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      virtualRouterName: map['virtualRouterName'] as String,
    );
  }
}

