// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec.dart';

/// {@template pulumi_appmesh_route_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_appmesh_route_route_args_doc}
class RouteArgs {
  /// Name of the service mesh in which to create the route. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  final pulumi.Input<String>? meshOwner;

  /// Name to use for the route. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Route specification to apply.
  final pulumi.Input<RouteSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name of the virtual router in which to create the route. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> virtualRouterName;

  /// Creates a new [RouteArgs].
  /// [meshName] Name of the service mesh in which to create the route. Must be between 1 and 255 characters in length.
  /// [meshOwner] AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  /// [name] Name to use for the route. Must be between 1 and 255 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spec] Route specification to apply.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [virtualRouterName] Name of the virtual router in which to create the route. Must be between 1 and 255 characters in length.
  RouteArgs({
    required String meshName,
    String? meshOwner,
    String? name,
    String? region,
    required RouteSpec spec,
    Map<String, String>? tags,
    required String virtualRouterName,
  })  : meshName = pulumi.Input.asInput<String>(meshName),
        meshOwner = pulumi.Input.asOptionalInput<String>(meshOwner),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        spec = pulumi.Input.asInput<RouteSpec>(spec),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        virtualRouterName = pulumi.Input.asInput<String>(virtualRouterName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['meshName'] = meshName;
    final meshOwnerValue = meshOwner;
    if (meshOwnerValue != null) {
      map['meshOwner'] = meshOwnerValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['spec'] = pulumi.Input.mapInputValue<RouteSpec, Map<String, dynamic>>(
        spec, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['virtualRouterName'] = virtualRouterName;
    return map;
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      meshName: map['meshName'] as String,
      meshOwner: map['meshOwner'] == null ? null : map['meshOwner'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      spec: RouteSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      virtualRouterName: map['virtualRouterName'] as String,
    );
  }
}
