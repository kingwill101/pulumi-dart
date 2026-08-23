// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_transit_gateway_transit_gateway_args_doc}
/// The set of arguments for TransitGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_transit_gateway_transit_gateway_args_doc}
class TransitGatewayArgs {
  /// Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is `64512` to `65534` for 16-bit ASNs and `4200000000` to `4294967294` for 32-bit ASNs. Default value: `64512`.
  ///
  /// &gt; **NOTE:** Modifying `amazonSideAsn` on a Transit Gateway with active BGP sessions is [not allowed](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyTransitGatewayOptions.html). You must first delete all Transit Gateway attachments that have BGP configured prior to modifying `amazonSideAsn`.
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
  /// Whether Multicast support is enabled. Required to use `ec2TransitGatewayMulticastDomain`. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? multicastSupport;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? securityGroupReferencingSupport;
  /// Key-value tags for the EC2 Transit Gateway. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [multicastSupport] Whether Multicast support is enabled. Required to use `ec2TransitGatewayMulticastDomain`. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupReferencingSupport] Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [tags] Key-value tags for the EC2 Transit Gateway. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayCidrBlocks] One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
  /// [vpnEcmpSupport] Whether VPN Equal Cost Multipath Protocol support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  const TransitGatewayArgs({
    this.amazonSideAsn,
    this.autoAcceptSharedAttachments,
    this.defaultRouteTableAssociation,
    this.defaultRouteTablePropagation,
    this.description,
    this.dnsSupport,
    this.encryptionSupport,
    this.multicastSupport,
    this.region,
    this.securityGroupReferencingSupport,
    this.tags,
    this.transitGatewayCidrBlocks,
    this.vpnEcmpSupport,
  });

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
      amazonSideAsn: (() { final guardedValue = map['amazonSideAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoAcceptSharedAttachments: (() { final guardedValue = map['autoAcceptSharedAttachments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultRouteTableAssociation: (() { final guardedValue = map['defaultRouteTableAssociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultRouteTablePropagation: (() { final guardedValue = map['defaultRouteTablePropagation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsSupport: (() { final guardedValue = map['dnsSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSupport: (() { final guardedValue = map['encryptionSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multicastSupport: (() { final guardedValue = map['multicastSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupReferencingSupport: (() { final guardedValue = map['securityGroupReferencingSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayCidrBlocks: (() { final guardedValue = map['transitGatewayCidrBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpnEcmpSupport: (() { final guardedValue = map['vpnEcmpSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
