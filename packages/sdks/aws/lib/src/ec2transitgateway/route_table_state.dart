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
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? defaultAssociationRouteTable,
    pulumi.Output<bool>? defaultPropagationRouteTable,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? transitGatewayId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      defaultAssociationRouteTable = pulumi.Input.asOptionalInput<bool>(defaultAssociationRouteTable),
      defaultPropagationRouteTable = pulumi.Input.asOptionalInput<bool>(defaultPropagationRouteTable),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      defaultAssociationRouteTable: map['defaultAssociationRouteTable'] == null ? null : pulumi.Output.create<bool>(map['defaultAssociationRouteTable'] as bool),
      defaultPropagationRouteTable: map['defaultPropagationRouteTable'] == null ? null : pulumi.Output.create<bool>(map['defaultPropagationRouteTable'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
    );
  }
}

