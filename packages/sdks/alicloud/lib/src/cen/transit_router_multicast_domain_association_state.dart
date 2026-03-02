// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterMulticastDomainAssociation resources.
class TransitRouterMulticastDomainAssociationState {
  /// The status of the Transit Router Multicast Domain Association.
  final pulumi.Input<String>? status;
  /// The ID of the VPC connection.
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// The ID of the multicast domain.
  final pulumi.Input<String>? transitRouterMulticastDomainId;
  /// The ID of the vSwitch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [TransitRouterMulticastDomainAssociationState].
  /// [status] The status of the Transit Router Multicast Domain Association.
  /// [transitRouterAttachmentId] The ID of the VPC connection.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain.
  /// [vswitchId] The ID of the vSwitch.
  TransitRouterMulticastDomainAssociationState({
    this.status,
    this.transitRouterAttachmentId,
    this.transitRouterMulticastDomainId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterMulticastDomainId': ?transitRouterMulticastDomainId,
      'vswitchId': ?vswitchId,
    };
  }

  factory TransitRouterMulticastDomainAssociationState.fromMap(Map<String, dynamic> map) {
    return TransitRouterMulticastDomainAssociationState(
      status: map['status'] == null ? null : (map['status']! as String).input(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : (map['transitRouterAttachmentId']! as String).input(),
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] == null ? null : (map['transitRouterMulticastDomainId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

