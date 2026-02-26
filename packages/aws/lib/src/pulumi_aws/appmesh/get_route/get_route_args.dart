// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRoute.
class GetRouteArgs {
  /// Name of the service mesh in which the virtual router exists.
  final Input<String> meshName;

  /// AWS account ID of the service mesh's owner.
  final Input<String>? meshOwner;

  /// Name of the route.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags.
  final Input<Map<String, String>>? tags;

  /// Name of the virtual router in which the route exists.
  final Input<String> virtualRouterName;

  GetRouteArgs({
    required this.meshName,
    this.meshOwner,
    required this.name,
    this.region,
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
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['virtualRouterName'] = virtualRouterName;
    return map;
  }

  factory GetRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs(
      meshName: Input.asInput<String>(map['meshName']),
      meshOwner: Input.asOptionalInput<String>(map['meshOwner']),
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      virtualRouterName: Input.asInput<String>(map['virtualRouterName']),
    );
  }
}
