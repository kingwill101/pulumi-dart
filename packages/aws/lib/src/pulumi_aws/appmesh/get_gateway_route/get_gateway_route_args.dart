// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGatewayRoute.
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

  GetGatewayRouteArgs({
    required this.meshName,
    this.meshOwner,
    required this.name,
    this.region,
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
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['virtualGatewayName'] = virtualGatewayName;
    return map;
  }

  factory GetGatewayRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteArgs(
      meshName: pulumi.Input.asInput<String>(map['meshName']),
      meshOwner: pulumi.Input.asOptionalInput<String>(map['meshOwner']),
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      virtualGatewayName:
          pulumi.Input.asInput<String>(map['virtualGatewayName']),
    );
  }
}
