// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcAttachmentAccepter resources.
class VpcAttachmentAccepterState {
  /// Whether Appliance Mode support is enabled. Valid values: `disable`, `enable`.
  final pulumi.Input<String>? applianceModeSupport;
  /// Whether DNS support is enabled. Valid values: `disable`, `enable`.
  final pulumi.Input<String>? dnsSupport;
  /// Whether IPv6 support is enabled. Valid values: `disable`, `enable`.
  final pulumi.Input<String>? ipv6Support;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  final pulumi.Input<String>? securityGroupReferencingSupport;
  /// Identifiers of EC2 Subnets.
  final pulumi.Input<List<String>>? subnetIds;
  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the EC2 Transit Gateway Attachment to manage.
  final pulumi.Input<String>? transitGatewayAttachmentId;
  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. Default value: `true`.
  final pulumi.Input<bool>? transitGatewayDefaultRouteTableAssociation;
  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. Default value: `true`.
  final pulumi.Input<bool>? transitGatewayDefaultRouteTablePropagation;
  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;
  /// Identifier of EC2 VPC.
  final pulumi.Input<String>? vpcId;
  /// Identifier of the AWS account that owns the EC2 VPC.
  final pulumi.Input<String>? vpcOwnerId;

  /// Creates a new [VpcAttachmentAccepterState].
  /// [applianceModeSupport] Whether Appliance Mode support is enabled. Valid values: `disable`, `enable`.
  /// [dnsSupport] Whether DNS support is enabled. Valid values: `disable`, `enable`.
  /// [ipv6Support] Whether IPv6 support is enabled. Valid values: `disable`, `enable`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupReferencingSupport] Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  /// [subnetIds] Identifiers of EC2 Subnets.
  /// [tags] Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayAttachmentId] The ID of the EC2 Transit Gateway Attachment to manage.
  /// [transitGatewayDefaultRouteTableAssociation] Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. Default value: `true`.
  /// [transitGatewayDefaultRouteTablePropagation] Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. Default value: `true`.
  /// [transitGatewayId] Identifier of EC2 Transit Gateway.
  /// [vpcId] Identifier of EC2 VPC.
  /// [vpcOwnerId] Identifier of the AWS account that owns the EC2 VPC.
  VpcAttachmentAccepterState({
    pulumi.Output<String>? applianceModeSupport,
    pulumi.Output<String>? dnsSupport,
    pulumi.Output<String>? ipv6Support,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityGroupReferencingSupport,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? transitGatewayAttachmentId,
    pulumi.Output<bool>? transitGatewayDefaultRouteTableAssociation,
    pulumi.Output<bool>? transitGatewayDefaultRouteTablePropagation,
    pulumi.Output<String>? transitGatewayId,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vpcOwnerId,
  }) :
      applianceModeSupport = pulumi.Input.asOptionalInput<String>(applianceModeSupport),
      dnsSupport = pulumi.Input.asOptionalInput<String>(dnsSupport),
      ipv6Support = pulumi.Input.asOptionalInput<String>(ipv6Support),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupReferencingSupport = pulumi.Input.asOptionalInput<String>(securityGroupReferencingSupport),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId),
      transitGatewayDefaultRouteTableAssociation = pulumi.Input.asOptionalInput<bool>(transitGatewayDefaultRouteTableAssociation),
      transitGatewayDefaultRouteTablePropagation = pulumi.Input.asOptionalInput<bool>(transitGatewayDefaultRouteTablePropagation),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpcOwnerId = pulumi.Input.asOptionalInput<String>(vpcOwnerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceModeSupport': ?applianceModeSupport,
      'dnsSupport': ?dnsSupport,
      'ipv6Support': ?ipv6Support,
      'region': ?region,
      'securityGroupReferencingSupport': ?securityGroupReferencingSupport,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayDefaultRouteTableAssociation': ?transitGatewayDefaultRouteTableAssociation,
      'transitGatewayDefaultRouteTablePropagation': ?transitGatewayDefaultRouteTablePropagation,
      'transitGatewayId': ?transitGatewayId,
      'vpcId': ?vpcId,
      'vpcOwnerId': ?vpcOwnerId,
    };
  }

  factory VpcAttachmentAccepterState.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentAccepterState(
      applianceModeSupport: map['applianceModeSupport'] == null ? null : pulumi.Output.create<String>(map['applianceModeSupport'] as String),
      dnsSupport: map['dnsSupport'] == null ? null : pulumi.Output.create<String>(map['dnsSupport'] as String),
      ipv6Support: map['ipv6Support'] == null ? null : pulumi.Output.create<String>(map['ipv6Support'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupReferencingSupport: map['securityGroupReferencingSupport'] == null ? null : pulumi.Output.create<String>(map['securityGroupReferencingSupport'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
      transitGatewayDefaultRouteTableAssociation: map['transitGatewayDefaultRouteTableAssociation'] == null ? null : pulumi.Output.create<bool>(map['transitGatewayDefaultRouteTableAssociation'] as bool),
      transitGatewayDefaultRouteTablePropagation: map['transitGatewayDefaultRouteTablePropagation'] == null ? null : pulumi.Output.create<bool>(map['transitGatewayDefaultRouteTablePropagation'] as bool),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpcOwnerId: map['vpcOwnerId'] == null ? null : pulumi.Output.create<String>(map['vpcOwnerId'] as String),
    );
  }
}

