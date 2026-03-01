// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitGateway resources.
class TransitGatewayState {
  /// Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is `64512` to `65534` for 16-bit ASNs and `4200000000` to `4294967294` for 32-bit ASNs. Default value: `64512`.
  ///
  /// > **NOTE:** Modifying `amazon_side_asn` on a Transit Gateway with active BGP sessions is [not allowed](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyTransitGatewayOptions.html). You must first delete all Transit Gateway attachments that have BGP configured prior to modifying `amazon_side_asn`.
  final pulumi.Input<int>? amazonSideAsn;
  /// EC2 Transit Gateway Amazon Resource Name (ARN)
  final pulumi.Input<String>? arn;
  /// Identifier of the default association route table
  final pulumi.Input<String>? associationDefaultRouteTableId;
  /// Whether resource attachment requests are automatically accepted. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? autoAcceptSharedAttachments;
  /// Whether resource attachments are automatically associated with the default association route table. Valid values: `disable`, `enable`. Default value: `enable`.
  final pulumi.Input<String>? defaultRouteTableAssociation;
  /// Whether resource attachments automatically propagate routes to the default propagation route table. Valid values: `disable`, `enable`. Default value: `enable`.
  final pulumi.Input<String>? defaultRouteTablePropagation;
  /// Description of the EC2 Transit Gateway.
  final pulumi.Input<String>? description;
  /// Whether DNS support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  final pulumi.Input<String>? dnsSupport;
  /// Whether encryption support for VPC Encryption Control is enabled. Valid values: `disable`, `enable`. Default value: `disable`. Once set, switching to `disable` requires explicitly specifying `disable` rather than removing the argument.
  final pulumi.Input<String>? encryptionSupport;
  /// Whether Multicast support is enabled. Required to use `ec2_transit_gateway_multicast_domain`. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? multicastSupport;
  /// Identifier of the AWS account that owns the EC2 Transit Gateway
  final pulumi.Input<String>? ownerId;
  /// Identifier of the default propagation route table
  final pulumi.Input<String>? propagationDefaultRouteTableId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? securityGroupReferencingSupport;
  /// Key-value tags for the EC2 Transit Gateway. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
  final pulumi.Input<List<String>>? transitGatewayCidrBlocks;
  /// Whether VPN Equal Cost Multipath Protocol support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  final pulumi.Input<String>? vpnEcmpSupport;

  /// Creates a new [TransitGatewayState].
  /// [amazonSideAsn] Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is `64512` to `65534` for 16-bit ASNs and `4200000000` to `4294967294` for 32-bit ASNs. Default value: `64512`.
  /// [arn] EC2 Transit Gateway Amazon Resource Name (ARN)
  /// [associationDefaultRouteTableId] Identifier of the default association route table
  /// [autoAcceptSharedAttachments] Whether resource attachment requests are automatically accepted. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [defaultRouteTableAssociation] Whether resource attachments are automatically associated with the default association route table. Valid values: `disable`, `enable`. Default value: `enable`.
  /// [defaultRouteTablePropagation] Whether resource attachments automatically propagate routes to the default propagation route table. Valid values: `disable`, `enable`. Default value: `enable`.
  /// [description] Description of the EC2 Transit Gateway.
  /// [dnsSupport] Whether DNS support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  /// [encryptionSupport] Whether encryption support for VPC Encryption Control is enabled. Valid values: `disable`, `enable`. Default value: `disable`. Once set, switching to `disable` requires explicitly specifying `disable` rather than removing the argument.
  /// [multicastSupport] Whether Multicast support is enabled. Required to use `ec2_transit_gateway_multicast_domain`. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [ownerId] Identifier of the AWS account that owns the EC2 Transit Gateway
  /// [propagationDefaultRouteTableId] Identifier of the default propagation route table
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupReferencingSupport] Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [tags] Key-value tags for the EC2 Transit Gateway. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayCidrBlocks] One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
  /// [vpnEcmpSupport] Whether VPN Equal Cost Multipath Protocol support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  TransitGatewayState({
    pulumi.Output<int>? amazonSideAsn,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? associationDefaultRouteTableId,
    pulumi.Output<String>? autoAcceptSharedAttachments,
    pulumi.Output<String>? defaultRouteTableAssociation,
    pulumi.Output<String>? defaultRouteTablePropagation,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dnsSupport,
    pulumi.Output<String>? encryptionSupport,
    pulumi.Output<String>? multicastSupport,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? propagationDefaultRouteTableId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityGroupReferencingSupport,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<String>>? transitGatewayCidrBlocks,
    pulumi.Output<String>? vpnEcmpSupport,
  }) :
      amazonSideAsn = pulumi.Input.asOptionalInput<int>(amazonSideAsn),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      associationDefaultRouteTableId = pulumi.Input.asOptionalInput<String>(associationDefaultRouteTableId),
      autoAcceptSharedAttachments = pulumi.Input.asOptionalInput<String>(autoAcceptSharedAttachments),
      defaultRouteTableAssociation = pulumi.Input.asOptionalInput<String>(defaultRouteTableAssociation),
      defaultRouteTablePropagation = pulumi.Input.asOptionalInput<String>(defaultRouteTablePropagation),
      description = pulumi.Input.asOptionalInput<String>(description),
      dnsSupport = pulumi.Input.asOptionalInput<String>(dnsSupport),
      encryptionSupport = pulumi.Input.asOptionalInput<String>(encryptionSupport),
      multicastSupport = pulumi.Input.asOptionalInput<String>(multicastSupport),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      propagationDefaultRouteTableId = pulumi.Input.asOptionalInput<String>(propagationDefaultRouteTableId),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupReferencingSupport = pulumi.Input.asOptionalInput<String>(securityGroupReferencingSupport),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transitGatewayCidrBlocks = pulumi.Input.asOptionalInput<List<String>>(transitGatewayCidrBlocks),
      vpnEcmpSupport = pulumi.Input.asOptionalInput<String>(vpnEcmpSupport);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonSideAsn': ?amazonSideAsn,
      'arn': ?arn,
      'associationDefaultRouteTableId': ?associationDefaultRouteTableId,
      'autoAcceptSharedAttachments': ?autoAcceptSharedAttachments,
      'defaultRouteTableAssociation': ?defaultRouteTableAssociation,
      'defaultRouteTablePropagation': ?defaultRouteTablePropagation,
      'description': ?description,
      'dnsSupport': ?dnsSupport,
      'encryptionSupport': ?encryptionSupport,
      'multicastSupport': ?multicastSupport,
      'ownerId': ?ownerId,
      'propagationDefaultRouteTableId': ?propagationDefaultRouteTableId,
      'region': ?region,
      'securityGroupReferencingSupport': ?securityGroupReferencingSupport,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayCidrBlocks': ?transitGatewayCidrBlocks,
      'vpnEcmpSupport': ?vpnEcmpSupport,
    };
  }

  factory TransitGatewayState.fromMap(Map<String, dynamic> map) {
    return TransitGatewayState(
      amazonSideAsn: map['amazonSideAsn'] == null ? null : pulumi.Output.create<int>(map['amazonSideAsn'] as int),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      associationDefaultRouteTableId: map['associationDefaultRouteTableId'] == null ? null : pulumi.Output.create<String>(map['associationDefaultRouteTableId'] as String),
      autoAcceptSharedAttachments: map['autoAcceptSharedAttachments'] == null ? null : pulumi.Output.create<String>(map['autoAcceptSharedAttachments'] as String),
      defaultRouteTableAssociation: map['defaultRouteTableAssociation'] == null ? null : pulumi.Output.create<String>(map['defaultRouteTableAssociation'] as String),
      defaultRouteTablePropagation: map['defaultRouteTablePropagation'] == null ? null : pulumi.Output.create<String>(map['defaultRouteTablePropagation'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnsSupport: map['dnsSupport'] == null ? null : pulumi.Output.create<String>(map['dnsSupport'] as String),
      encryptionSupport: map['encryptionSupport'] == null ? null : pulumi.Output.create<String>(map['encryptionSupport'] as String),
      multicastSupport: map['multicastSupport'] == null ? null : pulumi.Output.create<String>(map['multicastSupport'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      propagationDefaultRouteTableId: map['propagationDefaultRouteTableId'] == null ? null : pulumi.Output.create<String>(map['propagationDefaultRouteTableId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupReferencingSupport: map['securityGroupReferencingSupport'] == null ? null : pulumi.Output.create<String>(map['securityGroupReferencingSupport'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transitGatewayCidrBlocks: map['transitGatewayCidrBlocks'] == null ? null : pulumi.Output.create<List<String>>((map['transitGatewayCidrBlocks'] as List).cast<String>()),
      vpnEcmpSupport: map['vpnEcmpSupport'] == null ? null : pulumi.Output.create<String>(map['vpnEcmpSupport'] as String),
    );
  }
}

