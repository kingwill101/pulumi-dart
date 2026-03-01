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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdDate,
    pulumi.Output<String>? lastUpdatedDate,
    pulumi.Output<String>? meshName,
    pulumi.Output<String>? meshOwner,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceOwner,
    pulumi.Output<GatewayRouteSpec>? spec,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? virtualGatewayName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      lastUpdatedDate = pulumi.Input.asOptionalInput<String>(lastUpdatedDate),
      meshName = pulumi.Input.asOptionalInput<String>(meshName),
      meshOwner = pulumi.Input.asOptionalInput<String>(meshOwner),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceOwner = pulumi.Input.asOptionalInput<String>(resourceOwner),
      spec = pulumi.Input.asOptionalInput<GatewayRouteSpec>(spec),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      virtualGatewayName = pulumi.Input.asOptionalInput<String>(virtualGatewayName);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      lastUpdatedDate: map['lastUpdatedDate'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedDate'] as String),
      meshName: map['meshName'] == null ? null : pulumi.Output.create<String>(map['meshName'] as String),
      meshOwner: map['meshOwner'] == null ? null : pulumi.Output.create<String>(map['meshOwner'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceOwner: map['resourceOwner'] == null ? null : pulumi.Output.create<String>(map['resourceOwner'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<GatewayRouteSpec>(GatewayRouteSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      virtualGatewayName: map['virtualGatewayName'] == null ? null : pulumi.Output.create<String>(map['virtualGatewayName'] as String),
    );
  }
}

