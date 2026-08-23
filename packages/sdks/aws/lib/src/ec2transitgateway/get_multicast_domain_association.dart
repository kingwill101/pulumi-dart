// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMulticastDomainAssociation {
  /// The ID of the subnet associated with the transit gateway multicast domain.
  final pulumi.Input<String> subnetId;
  /// The ID of the transit gateway attachment.
  final pulumi.Input<String> transitGatewayAttachmentId;

  /// Creates a new [GetMulticastDomainAssociation].
  /// [subnetId] The ID of the subnet associated with the transit gateway multicast domain.
  /// [transitGatewayAttachmentId] The ID of the transit gateway attachment.
  const GetMulticastDomainAssociation({
    required this.subnetId,
    required this.transitGatewayAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': subnetId,
      'transitGatewayAttachmentId': transitGatewayAttachmentId,
    };
  }

  factory GetMulticastDomainAssociation.fromMap(Map<String, dynamic> map) {
    return GetMulticastDomainAssociation(
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      transitGatewayAttachmentId: pulumi.Input.fromValue(map['transitGatewayAttachmentId'] as String),
    );
  }
}
