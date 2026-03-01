// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_multicast_domain_association_transit_router_multicast_domain_association_args_doc}
/// The set of arguments for TransitRouterMulticastDomainAssociation.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_multicast_domain_association_transit_router_multicast_domain_association_args_doc}
class TransitRouterMulticastDomainAssociationArgs {
  /// The ID of the VPC connection.
  final pulumi.Input<String> transitRouterAttachmentId;
  /// The ID of the multicast domain.
  final pulumi.Input<String> transitRouterMulticastDomainId;
  /// The ID of the vSwitch.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [TransitRouterMulticastDomainAssociationArgs].
  /// [transitRouterAttachmentId] The ID of the VPC connection.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain.
  /// [vswitchId] The ID of the vSwitch.
  TransitRouterMulticastDomainAssociationArgs({
    required String transitRouterAttachmentId,
    required String transitRouterMulticastDomainId,
    required String vswitchId,
  }) :
      transitRouterAttachmentId = pulumi.Input.asInput<String>(transitRouterAttachmentId),
      transitRouterMulticastDomainId = pulumi.Input.asInput<String>(transitRouterMulticastDomainId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
      'vswitchId': vswitchId,
    };
  }

  factory TransitRouterMulticastDomainAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterMulticastDomainAssociationArgs(
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

