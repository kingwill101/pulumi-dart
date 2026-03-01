// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_multicast_domain_association_multicast_domain_association_args_doc}
/// The set of arguments for MulticastDomainAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_multicast_domain_association_multicast_domain_association_args_doc}
class MulticastDomainAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the subnet to associate with the transit gateway multicast domain.
  final pulumi.Input<String> subnetId;
  /// The ID of the transit gateway attachment.
  final pulumi.Input<String> transitGatewayAttachmentId;
  /// The ID of the transit gateway multicast domain.
  final pulumi.Input<String> transitGatewayMulticastDomainId;

  /// Creates a new [MulticastDomainAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetId] The ID of the subnet to associate with the transit gateway multicast domain.
  /// [transitGatewayAttachmentId] The ID of the transit gateway attachment.
  /// [transitGatewayMulticastDomainId] The ID of the transit gateway multicast domain.
  MulticastDomainAssociationArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> subnetId,
    required pulumi.Output<String> transitGatewayAttachmentId,
    required pulumi.Output<String> transitGatewayMulticastDomainId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetId = pulumi.Input.asInput<String>(subnetId),
      transitGatewayAttachmentId = pulumi.Input.asInput<String>(transitGatewayAttachmentId),
      transitGatewayMulticastDomainId = pulumi.Input.asInput<String>(transitGatewayMulticastDomainId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'subnetId': subnetId,
      'transitGatewayAttachmentId': transitGatewayAttachmentId,
      'transitGatewayMulticastDomainId': transitGatewayMulticastDomainId,
    };
  }

  factory MulticastDomainAssociationArgs.fromMap(Map<String, dynamic> map) {
    return MulticastDomainAssociationArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetId: pulumi.Output.create<String>(map['subnetId'] as String),
      transitGatewayAttachmentId: pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
      transitGatewayMulticastDomainId: pulumi.Output.create<String>(map['transitGatewayMulticastDomainId'] as String),
    );
  }
}

