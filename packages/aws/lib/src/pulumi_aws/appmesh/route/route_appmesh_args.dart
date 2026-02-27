// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../route_spec/route_spec.dart';

/// The set of arguments for Route.
class RouteAppmeshArgs {
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

  RouteAppmeshArgs({
    required this.meshName,
    this.meshOwner,
    this.name,
    this.region,
    required this.spec,
    this.tags,
    required this.virtualRouterName,
  });

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

  factory RouteAppmeshArgs.fromMap(Map<String, dynamic> map) {
    return RouteAppmeshArgs(
      meshName: pulumi.Input.asInput<String>(map['meshName']),
      meshOwner: pulumi.Input.asOptionalInput<String>(map['meshOwner']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      spec: pulumi.Input.asInput<RouteSpec>(map['spec']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      virtualRouterName: pulumi.Input.asInput<String>(map['virtualRouterName']),
    );
  }
}
