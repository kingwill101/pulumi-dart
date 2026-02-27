// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TransitGateway.
class TransitGatewayArgs {
  /// Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is `64512` to `65534` for 16-bit ASNs and `4200000000` to `4294967294` for 32-bit ASNs. Default value: `64512`.
  ///
  /// > **NOTE:** Modifying `amazon_side_asn` on a Transit Gateway with active BGP sessions is [not allowed](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyTransitGatewayOptions.html). You must first delete all Transit Gateway attachments that have BGP configured prior to modifying `amazon_side_asn`.
  final Input<int>? amazonSideAsn;

  /// Whether resource attachment requests are automatically accepted. Valid values: `disable`, `enable`. Default value: `disable`.
  final Input<String>? autoAcceptSharedAttachments;

  /// Whether resource attachments are automatically associated with the default association route table. Valid values: `disable`, `enable`. Default value: `enable`.
  final Input<String>? defaultRouteTableAssociation;

  /// Whether resource attachments automatically propagate routes to the default propagation route table. Valid values: `disable`, `enable`. Default value: `enable`.
  final Input<String>? defaultRouteTablePropagation;

  /// Description of the EC2 Transit Gateway.
  final Input<String>? description;

  /// Whether DNS support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  final Input<String>? dnsSupport;

  /// Whether encryption support for VPC Encryption Control is enabled. Valid values: `disable`, `enable`. Default value: `disable`. Once set, switching to `disable` requires explicitly specifying `disable` rather than removing the argument.
  final Input<String>? encryptionSupport;

  /// Whether Multicast support is enabled. Required to use `ec2_transit_gateway_multicast_domain`. Valid values: `disable`, `enable`. Default value: `disable`.
  final Input<String>? multicastSupport;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  final Input<String>? securityGroupReferencingSupport;

  /// Key-value tags for the EC2 Transit Gateway. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
  final Input<List<String>>? transitGatewayCidrBlocks;

  /// Whether VPN Equal Cost Multipath Protocol support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  final Input<String>? vpnEcmpSupport;

  TransitGatewayArgs({
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
    final map = <String, dynamic>{};
    final amazonSideAsnValue = amazonSideAsn;
    if (amazonSideAsnValue != null) {
      map['amazonSideAsn'] = amazonSideAsnValue;
    }
    final autoAcceptSharedAttachmentsValue = autoAcceptSharedAttachments;
    if (autoAcceptSharedAttachmentsValue != null) {
      map['autoAcceptSharedAttachments'] = autoAcceptSharedAttachmentsValue;
    }
    final defaultRouteTableAssociationValue = defaultRouteTableAssociation;
    if (defaultRouteTableAssociationValue != null) {
      map['defaultRouteTableAssociation'] = defaultRouteTableAssociationValue;
    }
    final defaultRouteTablePropagationValue = defaultRouteTablePropagation;
    if (defaultRouteTablePropagationValue != null) {
      map['defaultRouteTablePropagation'] = defaultRouteTablePropagationValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dnsSupportValue = dnsSupport;
    if (dnsSupportValue != null) {
      map['dnsSupport'] = dnsSupportValue;
    }
    final encryptionSupportValue = encryptionSupport;
    if (encryptionSupportValue != null) {
      map['encryptionSupport'] = encryptionSupportValue;
    }
    final multicastSupportValue = multicastSupport;
    if (multicastSupportValue != null) {
      map['multicastSupport'] = multicastSupportValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupReferencingSupportValue =
        securityGroupReferencingSupport;
    if (securityGroupReferencingSupportValue != null) {
      map['securityGroupReferencingSupport'] =
          securityGroupReferencingSupportValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitGatewayCidrBlocksValue = transitGatewayCidrBlocks;
    if (transitGatewayCidrBlocksValue != null) {
      map['transitGatewayCidrBlocks'] = transitGatewayCidrBlocksValue;
    }
    final vpnEcmpSupportValue = vpnEcmpSupport;
    if (vpnEcmpSupportValue != null) {
      map['vpnEcmpSupport'] = vpnEcmpSupportValue;
    }
    return map;
  }

  factory TransitGatewayArgs.fromMap(Map<String, dynamic> map) {
    return TransitGatewayArgs(
      amazonSideAsn: Input.asOptionalInput<int>(map['amazonSideAsn']),
      autoAcceptSharedAttachments:
          Input.asOptionalInput<String>(map['autoAcceptSharedAttachments']),
      defaultRouteTableAssociation:
          Input.asOptionalInput<String>(map['defaultRouteTableAssociation']),
      defaultRouteTablePropagation:
          Input.asOptionalInput<String>(map['defaultRouteTablePropagation']),
      description: Input.asOptionalInput<String>(map['description']),
      dnsSupport: Input.asOptionalInput<String>(map['dnsSupport']),
      encryptionSupport:
          Input.asOptionalInput<String>(map['encryptionSupport']),
      multicastSupport: Input.asOptionalInput<String>(map['multicastSupport']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupReferencingSupport:
          Input.asOptionalInput<String>(map['securityGroupReferencingSupport']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayCidrBlocks:
          Input.asOptionalInput<List<String>>(map['transitGatewayCidrBlocks']),
      vpnEcmpSupport: Input.asOptionalInput<String>(map['vpnEcmpSupport']),
    );
  }
}
