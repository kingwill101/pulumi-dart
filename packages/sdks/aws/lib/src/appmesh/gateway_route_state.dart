// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec.dart';

/// Input properties used for looking up and filtering GatewayRoute resources.
class GatewayRouteState {
  /// ARN of the gateway route.
  final pulumi.Input<String>? arn;
  /// Creation date of the gateway route.
  final pulumi.Input<String>? createdDate;
  /// Last update date of the gateway route.
  final pulumi.Input<String>? lastUpdatedDate;
  /// Name of the service mesh in which to create the gateway route. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? meshName;
  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  final pulumi.Input<String>? meshOwner;
  /// Name to use for the gateway route. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource owner's AWS account ID.
  final pulumi.Input<String>? resourceOwner;
  /// Gateway route specification to apply.
  final pulumi.Input<GatewayRouteSpec>? spec;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Name of the virtual gateway to associate the gateway route with. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? virtualGatewayName;

  /// Creates a new [GatewayRouteState].
  /// [arn] ARN of the gateway route.
  /// [createdDate] Creation date of the gateway route.
  /// [lastUpdatedDate] Last update date of the gateway route.
  /// [meshName] Name of the service mesh in which to create the gateway route. Must be between 1 and 255 characters in length.
  /// [meshOwner] AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  /// [name] Name to use for the gateway route. Must be between 1 and 255 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceOwner] Resource owner's AWS account ID.
  /// [spec] Gateway route specification to apply.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [virtualGatewayName] Name of the virtual gateway to associate the gateway route with. Must be between 1 and 255 characters in length.
  GatewayRouteState({
    this.arn,
    this.createdDate,
    this.lastUpdatedDate,
    this.meshName,
    this.meshOwner,
    this.name,
    this.region,
    this.resourceOwner,
    this.spec,
    this.tags,
    this.tagsAll,
    this.virtualGatewayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdDate': ?createdDate,
      'lastUpdatedDate': ?lastUpdatedDate,
      'meshName': ?meshName,
      'meshOwner': ?meshOwner,
      'name': ?name,
      'region': ?region,
      'resourceOwner': ?resourceOwner,
      'spec': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'virtualGatewayName': ?virtualGatewayName,
    };
  }

  factory GatewayRouteState.fromMap(Map<String, dynamic> map) {
    return GatewayRouteState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdDate: map['createdDate'] == null ? null : ((map['createdDate'] as String).input()).input(),
      lastUpdatedDate: map['lastUpdatedDate'] == null ? null : ((map['lastUpdatedDate'] as String).input()).input(),
      meshName: map['meshName'] == null ? null : ((map['meshName'] as String).input()).input(),
      meshOwner: map['meshOwner'] == null ? null : ((map['meshOwner'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceOwner: map['resourceOwner'] == null ? null : ((map['resourceOwner'] as String).input()).input(),
      spec: map['spec'] == null ? null : ((GatewayRouteSpec.fromMap((map['spec']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      virtualGatewayName: map['virtualGatewayName'] == null ? null : ((map['virtualGatewayName'] as String).input()).input(),
    );
  }
}

