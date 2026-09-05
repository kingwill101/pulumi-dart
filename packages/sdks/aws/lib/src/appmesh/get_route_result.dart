// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec.dart';

/// Result data returned by getRoute.
class GetRouteResult {
  /// ARN of the route.
  final String? arn;
  /// Creation date of the route.
  final String? createdDate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Last update date of the route.
  final String? lastUpdatedDate;
  final String? meshName;
  final String? meshOwner;
  final String? name;
  final String? region;
  /// Resource owner's AWS account ID.
  final String? resourceOwner;
  /// Route specification. See the `aws.appmesh.Route` resource for details.
  final List<GetRouteSpec>? specs;
  /// Map of tags.
  final Map<String, String>? tags;
  final String? virtualRouterName;

  /// Creates a new [GetRouteResult].
  /// [arn] ARN of the route.
  /// [createdDate] Creation date of the route.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedDate] Last update date of the route.
  /// [meshName] Optional.
  /// [meshOwner] Optional.
  /// [name] Optional.
  /// [region] Optional.
  /// [resourceOwner] Resource owner's AWS account ID.
  /// [specs] Route specification. See the `aws.appmesh.Route` resource for details.
  /// [tags] Map of tags.
  /// [virtualRouterName] Optional.
  const GetRouteResult({
    this.arn,
    this.createdDate,
    this.id,
    this.lastUpdatedDate,
    this.meshName,
    this.meshOwner,
    this.name,
    this.region,
    this.resourceOwner,
    this.specs,
    this.tags,
    this.virtualRouterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdDate': ?createdDate,
      'id': ?id,
      'lastUpdatedDate': ?lastUpdatedDate,
      'meshName': ?meshName,
      'meshOwner': ?meshOwner,
      'name': ?name,
      'region': ?region,
      'resourceOwner': ?resourceOwner,
      'specs': ?(() { final guardedValue = specs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteSpec, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'virtualRouterName': ?virtualRouterName,
    };
  }

  factory GetRouteResult.fromMap(Map<String, dynamic> map) {
    return GetRouteResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedDate: (() { final guardedValue = map['lastUpdatedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meshName: (() { final guardedValue = map['meshName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meshOwner: (() { final guardedValue = map['meshOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceOwner: (() { final guardedValue = map['resourceOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      specs: (() { final guardedValue = map['specs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteSpec>(guardedValue, (value) => GetRouteSpec.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      virtualRouterName: (() { final guardedValue = map['virtualRouterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
