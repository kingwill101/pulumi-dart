// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_spec/get_route_spec.dart';

/// Result data returned by getRoute.
class GetRouteResult {
  /// ARN of the route.
  final String arn;

  /// Creation date of the route.
  final String createdDate;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Last update date of the route.
  final String lastUpdatedDate;
  final String meshName;
  final String meshOwner;
  final String name;
  final String region;

  /// Resource owner's AWS account ID.
  final String resourceOwner;

  /// Route specification. See the `aws.appmesh.Route` resource for details.
  final List<GetRouteSpec> specs;

  /// Map of tags.
  final Map<String, String> tags;
  final String virtualRouterName;

  GetRouteResult({
    required this.arn,
    required this.createdDate,
    required this.id,
    required this.lastUpdatedDate,
    required this.meshName,
    required this.meshOwner,
    required this.name,
    required this.region,
    required this.resourceOwner,
    required this.specs,
    required this.tags,
    required this.virtualRouterName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdDate'] = createdDate;
    map['id'] = id;
    map['lastUpdatedDate'] = lastUpdatedDate;
    map['meshName'] = meshName;
    map['meshOwner'] = meshOwner;
    map['name'] = name;
    map['region'] = region;
    map['resourceOwner'] = resourceOwner;
    map['specs'] = pulumi.Input.encodeList<GetRouteSpec, Map<String, dynamic>>(
        specs, (value) => value.toMap());
    map['tags'] = tags;
    map['virtualRouterName'] = virtualRouterName;
    return map;
  }

  factory GetRouteResult.fromMap(Map<String, dynamic> map) {
    return GetRouteResult(
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      meshName: map['meshName'] as String,
      meshOwner: map['meshOwner'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      resourceOwner: map['resourceOwner'] as String,
      specs: pulumi.Input.decodeList<GetRouteSpec>(
          map['specs'],
          (value) =>
              GetRouteSpec.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualRouterName: map['virtualRouterName'] as String,
    );
  }
}
