// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_gateway_route_spec/get_gateway_route_spec.dart';

/// Result data returned by getGatewayRoute.
class GetGatewayRouteResult {
  /// ARN of the gateway route.
  final String arn;

  /// Creation date of the gateway route.
  final String createdDate;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Last update date of the gateway route.
  final String lastUpdatedDate;
  final String meshName;
  final String meshOwner;
  final String name;
  final String region;

  /// Resource owner's AWS account ID.
  final String resourceOwner;

  /// Gateway route specification. See the `aws.appmesh.GatewayRoute` resource for details.
  final List<GetGatewayRouteSpec> specs;

  /// Map of tags.
  final Map<String, String> tags;
  final String virtualGatewayName;

  GetGatewayRouteResult({
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
    required this.virtualGatewayName,
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
    map['specs'] = Input.encodeList<GetGatewayRouteSpec, Map<String, dynamic>>(
        specs, (value) => value.toMap());
    map['tags'] = tags;
    map['virtualGatewayName'] = virtualGatewayName;
    return map;
  }

  factory GetGatewayRouteResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteResult(
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      meshName: map['meshName'] as String,
      meshOwner: map['meshOwner'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      resourceOwner: map['resourceOwner'] as String,
      specs: Input.decodeList<GetGatewayRouteSpec>(
          map['specs'],
          (value) => GetGatewayRouteSpec.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualGatewayName: map['virtualGatewayName'] as String,
    );
  }
}
