// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocalGatewayRouteTableVpcAssociation resources.
class LocalGatewayRouteTableVpcAssociationState {
  final pulumi.Input<String>? localGatewayId;
  /// Identifier of EC2 Local Gateway Route Table.
  final pulumi.Input<String>? localGatewayRouteTableId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Identifier of EC2 VPC.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vpcId;

  /// Creates a new [LocalGatewayRouteTableVpcAssociationState].
  /// [localGatewayId] Optional.
  /// [localGatewayRouteTableId] Identifier of EC2 Local Gateway Route Table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] Identifier of EC2 VPC.
  LocalGatewayRouteTableVpcAssociationState({
    this.localGatewayId,
    this.localGatewayRouteTableId,
    this.region,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localGatewayId': ?localGatewayId,
      'localGatewayRouteTableId': ?localGatewayRouteTableId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory LocalGatewayRouteTableVpcAssociationState.fromMap(Map<String, dynamic> map) {
    return LocalGatewayRouteTableVpcAssociationState(
      localGatewayId: map['localGatewayId'] == null ? null : ((map['localGatewayId'] as String).input()).input(),
      localGatewayRouteTableId: map['localGatewayRouteTableId'] == null ? null : ((map['localGatewayRouteTableId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

