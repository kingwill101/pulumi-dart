// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteTable resources.
class RouteTableState {
  /// EC2 Transit Gateway Route Table Amazon Resource Name (ARN).
  final pulumi.Input<String>? arn;
  /// Boolean whether this is the default association route table for the EC2 Transit Gateway.
  final pulumi.Input<bool>? defaultAssociationRouteTable;
  /// Boolean whether this is the default propagation route table for the EC2 Transit Gateway.
  final pulumi.Input<bool>? defaultPropagationRouteTable;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the EC2 Transit Gateway Route Table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;

  /// Creates a new [RouteTableState].
  /// [arn] EC2 Transit Gateway Route Table Amazon Resource Name (ARN).
  /// [defaultAssociationRouteTable] Boolean whether this is the default association route table for the EC2 Transit Gateway.
  /// [defaultPropagationRouteTable] Boolean whether this is the default propagation route table for the EC2 Transit Gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Route Table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayId] Identifier of EC2 Transit Gateway.
  RouteTableState({
    this.arn,
    this.defaultAssociationRouteTable,
    this.defaultPropagationRouteTable,
    this.region,
    this.tags,
    this.tagsAll,
    this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultAssociationRouteTable': ?defaultAssociationRouteTable,
      'defaultPropagationRouteTable': ?defaultPropagationRouteTable,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayId': ?transitGatewayId,
    };
  }

  factory RouteTableState.fromMap(Map<String, dynamic> map) {
    return RouteTableState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      defaultAssociationRouteTable: map['defaultAssociationRouteTable'] == null ? null : ((map['defaultAssociationRouteTable'] as bool).input()).input(),
      defaultPropagationRouteTable: map['defaultPropagationRouteTable'] == null ? null : ((map['defaultPropagationRouteTable'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      transitGatewayId: map['transitGatewayId'] == null ? null : ((map['transitGatewayId'] as String).input()).input(),
    );
  }
}

