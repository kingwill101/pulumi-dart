// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MulticastDomainAssociation resources.
class MulticastDomainAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the subnet to associate with the transit gateway multicast domain.
  final pulumi.Input<String>? subnetId;
  /// The ID of the transit gateway attachment.
  final pulumi.Input<String>? transitGatewayAttachmentId;
  /// The ID of the transit gateway multicast domain.
  final pulumi.Input<String>? transitGatewayMulticastDomainId;

  /// Creates a new [MulticastDomainAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetId] The ID of the subnet to associate with the transit gateway multicast domain.
  /// [transitGatewayAttachmentId] The ID of the transit gateway attachment.
  /// [transitGatewayMulticastDomainId] The ID of the transit gateway multicast domain.
  MulticastDomainAssociationState({
    this.region,
    this.subnetId,
    this.transitGatewayAttachmentId,
    this.transitGatewayMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'subnetId': ?subnetId,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayMulticastDomainId': ?transitGatewayMulticastDomainId,
    };
  }

  factory MulticastDomainAssociationState.fromMap(Map<String, dynamic> map) {
    return MulticastDomainAssociationState(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : (map['transitGatewayAttachmentId'] as String).input(),
      transitGatewayMulticastDomainId: map['transitGatewayMulticastDomainId'] == null ? null : (map['transitGatewayMulticastDomainId'] as String).input(),
    );
  }
}

