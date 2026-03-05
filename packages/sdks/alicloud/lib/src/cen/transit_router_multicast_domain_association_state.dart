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
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterAttachmentId: (() { final guardedValue = map['transitRouterAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterMulticastDomainId: (() { final guardedValue = map['transitRouterMulticastDomainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

