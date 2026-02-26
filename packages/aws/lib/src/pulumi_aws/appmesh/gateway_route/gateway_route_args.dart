// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../gateway_route_spec/gateway_route_spec.dart';

/// The set of arguments for GatewayRoute.
class GatewayRouteArgs {
  /// Name of the service mesh in which to create the gateway route. Must be between 1 and 255 characters in length.
  final Input<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  final Input<String>? meshOwner;

  /// Name to use for the gateway route. Must be between 1 and 255 characters in length.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Gateway route specification to apply.
  final Input<GatewayRouteSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Name of the virtual gateway to associate the gateway route with. Must be between 1 and 255 characters in length.
  final Input<String> virtualGatewayName;

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
    map['spec'] = Input.mapInputValue<GatewayRouteSpec, Map<String, dynamic>>(
        spec, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['virtualGatewayName'] = virtualGatewayName;
    return map;
  }

  factory GatewayRouteArgs.fromMap(Map<String, dynamic> map) {
    return GatewayRouteArgs(
      meshName: Input.asInput<String>(map['meshName']),
      meshOwner: Input.asOptionalInput<String>(map['meshOwner']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      spec: Input.asInput<GatewayRouteSpec>(map['spec']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      virtualGatewayName: Input.asInput<String>(map['virtualGatewayName']),
    );
  }
}
