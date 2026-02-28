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
    String? region,
    required String subnetId,
    required String transitGatewayAttachmentId,
    required String transitGatewayMulticastDomainId,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        subnetId = pulumi.Input.asInput<String>(subnetId),
        transitGatewayAttachmentId =
            pulumi.Input.asInput<String>(transitGatewayAttachmentId),
        transitGatewayMulticastDomainId =
            pulumi.Input.asInput<String>(transitGatewayMulticastDomainId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subnetId'] = subnetId;
    map['transitGatewayAttachmentId'] = transitGatewayAttachmentId;
    map['transitGatewayMulticastDomainId'] = transitGatewayMulticastDomainId;
    return map;
  }

  factory MulticastDomainAssociationArgs.fromMap(Map<String, dynamic> map) {
    return MulticastDomainAssociationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      subnetId: map['subnetId'] as String,
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] as String,
      transitGatewayMulticastDomainId:
          map['transitGatewayMulticastDomainId'] as String,
    );
  }
}
