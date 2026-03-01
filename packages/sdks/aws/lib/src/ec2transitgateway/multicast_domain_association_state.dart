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
    pulumi.Output<String>? region,
    pulumi.Output<String>? subnetId,
    pulumi.Output<String>? transitGatewayAttachmentId,
    pulumi.Output<String>? transitGatewayMulticastDomainId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      transitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId),
      transitGatewayMulticastDomainId = pulumi.Input.asOptionalInput<String>(transitGatewayMulticastDomainId);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
      transitGatewayMulticastDomainId: map['transitGatewayMulticastDomainId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayMulticastDomainId'] as String),
    );
  }
}

