// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec.dart';

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

  /// Creates a new [GetGatewayRouteResult].
  /// [arn] ARN of the gateway route.
  /// [createdDate] Creation date of the gateway route.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedDate] Last update date of the gateway route.
  /// [meshName] Required.
  /// [meshOwner] Required.
  /// [name] Required.
  /// [region] Required.
  /// [resourceOwner] Resource owner's AWS account ID.
  /// [specs] Gateway route specification. See the `aws.appmesh.GatewayRoute` resource for details.
  /// [tags] Map of tags.
  /// [virtualGatewayName] Required.
  const GetGatewayRouteResult({
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
    return <String, dynamic>{
      'arn': arn,
      'createdDate': createdDate,
      'id': id,
      'lastUpdatedDate': lastUpdatedDate,
      'meshName': meshName,
      'meshOwner': meshOwner,
      'name': name,
      'region': region,
      'resourceOwner': resourceOwner,
      'specs': pulumi.Input.encodeList<GetGatewayRouteSpec, Map<String, dynamic>>(specs, (value) => value.toMap()),
      'tags': tags,
      'virtualGatewayName': virtualGatewayName,
    };
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
      specs: pulumi.Input.decodeList<GetGatewayRouteSpec>(map['specs']!, (value) => GetGatewayRouteSpec.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualGatewayName: map['virtualGatewayName'] as String,
    );
  }
}

