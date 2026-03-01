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
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterAttachmentId,
    pulumi.Output<String>? transitRouterMulticastDomainId,
    pulumi.Output<String>? vswitchId,
  }) :
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId),
      transitRouterMulticastDomainId = pulumi.Input.asOptionalInput<String>(transitRouterMulticastDomainId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] == null ? null : pulumi.Output.create<String>(map['transitRouterMulticastDomainId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

