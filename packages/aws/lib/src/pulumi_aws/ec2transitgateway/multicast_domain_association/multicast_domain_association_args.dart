// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MulticastDomainAssociation.
class MulticastDomainAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the subnet to associate with the transit gateway multicast domain.
  final pulumi.Input<String> subnetId;

  /// The ID of the transit gateway attachment.
  final pulumi.Input<String> transitGatewayAttachmentId;

  /// The ID of the transit gateway multicast domain.
  final pulumi.Input<String> transitGatewayMulticastDomainId;

  MulticastDomainAssociationArgs({
    this.region,
    required this.subnetId,
    required this.transitGatewayAttachmentId,
    required this.transitGatewayMulticastDomainId,
  });

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
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subnetId: pulumi.Input.asInput<String>(map['subnetId']),
      transitGatewayAttachmentId:
          pulumi.Input.asInput<String>(map['transitGatewayAttachmentId']),
      transitGatewayMulticastDomainId:
          pulumi.Input.asInput<String>(map['transitGatewayMulticastDomainId']),
    );
  }
}
