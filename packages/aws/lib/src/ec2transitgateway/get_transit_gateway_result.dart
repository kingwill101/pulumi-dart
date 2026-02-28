// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_gateway_filter.dart';

/// Result data returned by getTransitGateway.
class GetTransitGatewayResult {
  /// Private Autonomous System Number (ASN) for the Amazon side of a BGP session
  final int amazonSideAsn;

  /// EC2 Transit Gateway ARN
  final String arn;

  /// Identifier of the default association route table
  final String associationDefaultRouteTableId;

  /// Whether resource attachment requests are automatically accepted
  final String autoAcceptSharedAttachments;

  /// Whether resource attachments are automatically associated with the default association route table
  final String defaultRouteTableAssociation;

  /// Whether resource attachments automatically propagate routes to the default propagation route table
  final String defaultRouteTablePropagation;

  /// Description of the EC2 Transit Gateway
  final String description;

  /// Whether DNS support is enabled
  final String dnsSupport;

  /// Whether encryption support for VPC Encryption Control is enabled.
  final String encryptionSupport;
  final List<GetTransitGatewayFilter>? filters;

  /// EC2 Transit Gateway identifier
  final String id;

  /// Whether Multicast support is enabled
  final String multicastSupport;

  /// Identifier of the AWS account that owns the EC2 Transit Gateway
  final String ownerId;

  /// Identifier of the default propagation route table
  final String propagationDefaultRouteTableId;
  final String region;

  /// Whether Security Group Referencing Support is enabled
  final String securityGroupReferencingSupport;

  /// Key-value tags for the EC2 Transit Gateway
  final Map<String, String> tags;

  /// The list of associated CIDR blocks
  final List<String> transitGatewayCidrBlocks;

  /// Whether VPN Equal Cost Multipath Protocol support is enabled
  final String vpnEcmpSupport;

  /// Creates a new [GetTransitGatewayResult].
  /// [amazonSideAsn] Private Autonomous System Number (ASN) for the Amazon side of a BGP session
  /// [arn] EC2 Transit Gateway ARN
  /// [associationDefaultRouteTableId] Identifier of the default association route table
  /// [autoAcceptSharedAttachments] Whether resource attachment requests are automatically accepted
  /// [defaultRouteTableAssociation] Whether resource attachments are automatically associated with the default association route table
  /// [defaultRouteTablePropagation] Whether resource attachments automatically propagate routes to the default propagation route table
  /// [description] Description of the EC2 Transit Gateway
  /// [dnsSupport] Whether DNS support is enabled
  /// [encryptionSupport] Whether encryption support for VPC Encryption Control is enabled.
  /// [filters] Optional.
  /// [id] EC2 Transit Gateway identifier
  /// [multicastSupport] Whether Multicast support is enabled
  /// [ownerId] Identifier of the AWS account that owns the EC2 Transit Gateway
  /// [propagationDefaultRouteTableId] Identifier of the default propagation route table
  /// [region] Required.
  /// [securityGroupReferencingSupport] Whether Security Group Referencing Support is enabled
  /// [tags] Key-value tags for the EC2 Transit Gateway
  /// [transitGatewayCidrBlocks] The list of associated CIDR blocks
  /// [vpnEcmpSupport] Whether VPN Equal Cost Multipath Protocol support is enabled
  GetTransitGatewayResult({
    required this.amazonSideAsn,
    required this.arn,
    required this.associationDefaultRouteTableId,
    required this.autoAcceptSharedAttachments,
    required this.defaultRouteTableAssociation,
    required this.defaultRouteTablePropagation,
    required this.description,
    required this.dnsSupport,
    required this.encryptionSupport,
    this.filters,
    required this.id,
    required this.multicastSupport,
    required this.ownerId,
    required this.propagationDefaultRouteTableId,
    required this.region,
    required this.securityGroupReferencingSupport,
    required this.tags,
    required this.transitGatewayCidrBlocks,
    required this.vpnEcmpSupport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amazonSideAsn'] = amazonSideAsn;
    map['arn'] = arn;
    map['associationDefaultRouteTableId'] = associationDefaultRouteTableId;
    map['autoAcceptSharedAttachments'] = autoAcceptSharedAttachments;
    map['defaultRouteTableAssociation'] = defaultRouteTableAssociation;
    map['defaultRouteTablePropagation'] = defaultRouteTablePropagation;
    map['description'] = description;
    map['dnsSupport'] = dnsSupport;
    map['encryptionSupport'] = encryptionSupport;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetTransitGatewayFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['multicastSupport'] = multicastSupport;
    map['ownerId'] = ownerId;
    map['propagationDefaultRouteTableId'] = propagationDefaultRouteTableId;
    map['region'] = region;
    map['securityGroupReferencingSupport'] = securityGroupReferencingSupport;
    map['tags'] = tags;
    map['transitGatewayCidrBlocks'] = transitGatewayCidrBlocks;
    map['vpnEcmpSupport'] = vpnEcmpSupport;
    return map;
  }

  factory GetTransitGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetTransitGatewayResult(
      amazonSideAsn: map['amazonSideAsn'] as int,
      arn: map['arn'] as String,
      associationDefaultRouteTableId:
          map['associationDefaultRouteTableId'] as String,
      autoAcceptSharedAttachments: map['autoAcceptSharedAttachments'] as String,
      defaultRouteTableAssociation:
          map['defaultRouteTableAssociation'] as String,
      defaultRouteTablePropagation:
          map['defaultRouteTablePropagation'] as String,
      description: map['description'] as String,
      dnsSupport: map['dnsSupport'] as String,
      encryptionSupport: map['encryptionSupport'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetTransitGatewayFilter>(
              map['filters'],
              (value) => GetTransitGatewayFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      multicastSupport: map['multicastSupport'] as String,
      ownerId: map['ownerId'] as String,
      propagationDefaultRouteTableId:
          map['propagationDefaultRouteTableId'] as String,
      region: map['region'] as String,
      securityGroupReferencingSupport:
          map['securityGroupReferencingSupport'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayCidrBlocks:
          (map['transitGatewayCidrBlocks'] as List).cast<String>(),
      vpnEcmpSupport: map['vpnEcmpSupport'] as String,
    );
  }
}
