// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_gateway_filter.dart';

/// Result data returned by getTransitGateway.
class GetTransitGatewayResult {
  /// Private Autonomous System Number (ASN) for the Amazon side of a BGP session
  final int? amazonSideAsn;
  /// EC2 Transit Gateway ARN
  final String? arn;
  /// Identifier of the default association route table
  final String? associationDefaultRouteTableId;
  /// Whether resource attachment requests are automatically accepted
  final String? autoAcceptSharedAttachments;
  /// Whether resource attachments are automatically associated with the default association route table
  final String? defaultRouteTableAssociation;
  /// Whether resource attachments automatically propagate routes to the default propagation route table
  final String? defaultRouteTablePropagation;
  /// Description of the EC2 Transit Gateway
  final String? description;
  /// Whether DNS support is enabled
  final String? dnsSupport;
  /// Whether encryption support for VPC Encryption Control is enabled.
  final String? encryptionSupport;
  final List<GetTransitGatewayFilter>? filters;
  /// EC2 Transit Gateway identifier
  final String? id;
  /// Whether Multicast support is enabled
  final String? multicastSupport;
  /// Identifier of the AWS account that owns the EC2 Transit Gateway
  final String? ownerId;
  /// Identifier of the default propagation route table
  final String? propagationDefaultRouteTableId;
  final String? region;
  /// Whether Security Group Referencing Support is enabled
  final String? securityGroupReferencingSupport;
  /// Key-value tags for the EC2 Transit Gateway
  final Map<String, String>? tags;
  /// The list of associated CIDR blocks
  final List<String>? transitGatewayCidrBlocks;
  /// Whether VPN Equal Cost Multipath Protocol support is enabled
  final String? vpnEcmpSupport;

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
  /// [region] Optional.
  /// [securityGroupReferencingSupport] Whether Security Group Referencing Support is enabled
  /// [tags] Key-value tags for the EC2 Transit Gateway
  /// [transitGatewayCidrBlocks] The list of associated CIDR blocks
  /// [vpnEcmpSupport] Whether VPN Equal Cost Multipath Protocol support is enabled
  const GetTransitGatewayResult({
    this.amazonSideAsn,
    this.arn,
    this.associationDefaultRouteTableId,
    this.autoAcceptSharedAttachments,
    this.defaultRouteTableAssociation,
    this.defaultRouteTablePropagation,
    this.description,
    this.dnsSupport,
    this.encryptionSupport,
    this.filters,
    this.id,
    this.multicastSupport,
    this.ownerId,
    this.propagationDefaultRouteTableId,
    this.region,
    this.securityGroupReferencingSupport,
    this.tags,
    this.transitGatewayCidrBlocks,
    this.vpnEcmpSupport,
  });

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
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTransitGatewayFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'multicastSupport': ?multicastSupport,
      'ownerId': ?ownerId,
      'propagationDefaultRouteTableId': ?propagationDefaultRouteTableId,
      'region': ?region,
      'securityGroupReferencingSupport': ?securityGroupReferencingSupport,
      'tags': ?tags,
      'transitGatewayCidrBlocks': ?transitGatewayCidrBlocks,
      'vpnEcmpSupport': ?vpnEcmpSupport,
    };
  }

  factory GetTransitGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetTransitGatewayResult(
      amazonSideAsn: (() { final guardedValue = map['amazonSideAsn']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associationDefaultRouteTableId: (() { final guardedValue = map['associationDefaultRouteTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoAcceptSharedAttachments: (() { final guardedValue = map['autoAcceptSharedAttachments']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultRouteTableAssociation: (() { final guardedValue = map['defaultRouteTableAssociation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultRouteTablePropagation: (() { final guardedValue = map['defaultRouteTablePropagation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsSupport: (() { final guardedValue = map['dnsSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionSupport: (() { final guardedValue = map['encryptionSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTransitGatewayFilter>(guardedValue, (value) => GetTransitGatewayFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multicastSupport: (() { final guardedValue = map['multicastSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      propagationDefaultRouteTableId: (() { final guardedValue = map['propagationDefaultRouteTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupReferencingSupport: (() { final guardedValue = map['securityGroupReferencingSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transitGatewayCidrBlocks: (() { final guardedValue = map['transitGatewayCidrBlocks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vpnEcmpSupport: (() { final guardedValue = map['vpnEcmpSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
