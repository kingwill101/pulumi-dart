// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_transit_gateway_transit_gateway_args_doc}
/// The set of arguments for TransitGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_transit_gateway_transit_gateway_args_doc}
class TransitGatewayArgs {
  /// Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is `64512` to `65534` for 16-bit ASNs and `4200000000` to `4294967294` for 32-bit ASNs. Default value: `64512`.
  ///
  /// > **NOTE:** Modifying `amazon_side_asn` on a Transit Gateway with active BGP sessions is [not allowed](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyTransitGatewayOptions.html). You must first delete all Transit Gateway attachments that have BGP configured prior to modifying `amazon_side_asn`.
  final pulumi.Input<int>? amazonSideAsn;

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

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? securityGroupReferencingSupport;

  /// Key-value tags for the EC2 Transit Gateway. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
  final pulumi.Input<List<String>>? transitGatewayCidrBlocks;

  /// Whether VPN Equal Cost Multipath Protocol support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  final pulumi.Input<String>? vpnEcmpSupport;

  /// Creates a new [TransitGatewayArgs].
  /// [amazonSideAsn] Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is `64512` to `65534` for 16-bit ASNs and `4200000000` to `4294967294` for 32-bit ASNs. Default value: `64512`.
  /// [autoAcceptSharedAttachments] Whether resource attachment requests are automatically accepted. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [defaultRouteTableAssociation] Whether resource attachments are automatically associated with the default association route table. Valid values: `disable`, `enable`. Default value: `enable`.
  /// [defaultRouteTablePropagation] Whether resource attachments automatically propagate routes to the default propagation route table. Valid values: `disable`, `enable`. Default value: `enable`.
  /// [description] Description of the EC2 Transit Gateway.
  /// [dnsSupport] Whether DNS support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  /// [encryptionSupport] Whether encryption support for VPC Encryption Control is enabled. Valid values: `disable`, `enable`. Default value: `disable`. Once set, switching to `disable` requires explicitly specifying `disable` rather than removing the argument.
  /// [multicastSupport] Whether Multicast support is enabled. Required to use `ec2_transit_gateway_multicast_domain`. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupReferencingSupport] Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [tags] Key-value tags for the EC2 Transit Gateway. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayCidrBlocks] One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
  /// [vpnEcmpSupport] Whether VPN Equal Cost Multipath Protocol support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  TransitGatewayArgs({
    int? amazonSideAsn,
    String? autoAcceptSharedAttachments,
    String? defaultRouteTableAssociation,
    String? defaultRouteTablePropagation,
    String? description,
    String? dnsSupport,
    String? encryptionSupport,
    String? multicastSupport,
    String? region,
    String? securityGroupReferencingSupport,
    Map<String, String>? tags,
    List<String>? transitGatewayCidrBlocks,
    String? vpnEcmpSupport,
  }) : amazonSideAsn = pulumi.Input.asOptionalInput<int>(amazonSideAsn),
       autoAcceptSharedAttachments = pulumi.Input.asOptionalInput<String>(
         autoAcceptSharedAttachments,
       ),
       defaultRouteTableAssociation = pulumi.Input.asOptionalInput<String>(
         defaultRouteTableAssociation,
       ),
       defaultRouteTablePropagation = pulumi.Input.asOptionalInput<String>(
         defaultRouteTablePropagation,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       dnsSupport = pulumi.Input.asOptionalInput<String>(dnsSupport),
       encryptionSupport = pulumi.Input.asOptionalInput<String>(
         encryptionSupport,
       ),
       multicastSupport = pulumi.Input.asOptionalInput<String>(
         multicastSupport,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       securityGroupReferencingSupport = pulumi.Input.asOptionalInput<String>(
         securityGroupReferencingSupport,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       transitGatewayCidrBlocks = pulumi.Input.asOptionalInput<List<String>>(
         transitGatewayCidrBlocks,
       ),
       vpnEcmpSupport = pulumi.Input.asOptionalInput<String>(vpnEcmpSupport);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonSideAsn': ?amazonSideAsn,
      'autoAcceptSharedAttachments': ?autoAcceptSharedAttachments,
      'defaultRouteTableAssociation': ?defaultRouteTableAssociation,
      'defaultRouteTablePropagation': ?defaultRouteTablePropagation,
      'description': ?description,
      'dnsSupport': ?dnsSupport,
      'encryptionSupport': ?encryptionSupport,
      'multicastSupport': ?multicastSupport,
      'region': ?region,
      'securityGroupReferencingSupport': ?securityGroupReferencingSupport,
      'tags': ?tags,
      'transitGatewayCidrBlocks': ?transitGatewayCidrBlocks,
      'vpnEcmpSupport': ?vpnEcmpSupport,
    };
  }

  factory TransitGatewayArgs.fromMap(Map<String, dynamic> map) {
    return TransitGatewayArgs(
      amazonSideAsn: map['amazonSideAsn'] == null
          ? null
          : map['amazonSideAsn'] as int,
      autoAcceptSharedAttachments: map['autoAcceptSharedAttachments'] == null
          ? null
          : map['autoAcceptSharedAttachments'] as String,
      defaultRouteTableAssociation: map['defaultRouteTableAssociation'] == null
          ? null
          : map['defaultRouteTableAssociation'] as String,
      defaultRouteTablePropagation: map['defaultRouteTablePropagation'] == null
          ? null
          : map['defaultRouteTablePropagation'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      dnsSupport: map['dnsSupport'] == null
          ? null
          : map['dnsSupport'] as String,
      encryptionSupport: map['encryptionSupport'] == null
          ? null
          : map['encryptionSupport'] as String,
      multicastSupport: map['multicastSupport'] == null
          ? null
          : map['multicastSupport'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupReferencingSupport:
          map['securityGroupReferencingSupport'] == null
          ? null
          : map['securityGroupReferencingSupport'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitGatewayCidrBlocks: map['transitGatewayCidrBlocks'] == null
          ? null
          : (map['transitGatewayCidrBlocks'] as List).cast<String>(),
      vpnEcmpSupport: map['vpnEcmpSupport'] == null
          ? null
          : map['vpnEcmpSupport'] as String,
    );
  }
}
