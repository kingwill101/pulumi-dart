// ignore_for_file: unused_element, unnecessary_cast

class GetMulticastDomainAssociation {
  /// The ID of the subnet associated with the transit gateway multicast domain.
  final String subnetId;

  /// The ID of the transit gateway attachment.
  final String transitGatewayAttachmentId;

  GetMulticastDomainAssociation({
    required this.subnetId,
    required this.transitGatewayAttachmentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subnetId'] = subnetId;
    map['transitGatewayAttachmentId'] = transitGatewayAttachmentId;
    return map;
  }

  factory GetMulticastDomainAssociation.fromMap(Map<String, dynamic> map) {
    return GetMulticastDomainAssociation(
      subnetId: map['subnetId'] as String,
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] as String,
    );
  }
}
