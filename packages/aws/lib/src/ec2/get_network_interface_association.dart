// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkInterfaceAssociation {
  /// Allocation ID.
  final String allocationId;
  /// Association ID.
  final String associationId;
  /// Carrier IP address associated with the network interface. This attribute is only set when the network interface is in a subnet which is associated with a Wavelength Zone.
  final String carrierIp;
  /// Customer-owned IP address.
  final String customerOwnedIp;
  /// ID of the Elastic IP address owner.
  final String ipOwnerId;
  /// Public DNS name.
  final String publicDnsName;
  /// Address of the Elastic IP address bound to the network interface.
  final String publicIp;

  /// Creates a new [GetNetworkInterfaceAssociation].
  /// [allocationId] Allocation ID.
  /// [associationId] Association ID.
  /// [carrierIp] Carrier IP address associated with the network interface. This attribute is only set when the network interface is in a subnet which is associated with a Wavelength Zone.
  /// [customerOwnedIp] Customer-owned IP address.
  /// [ipOwnerId] ID of the Elastic IP address owner.
  /// [publicDnsName] Public DNS name.
  /// [publicIp] Address of the Elastic IP address bound to the network interface.
  GetNetworkInterfaceAssociation({
    required this.allocationId,
    required this.associationId,
    required this.carrierIp,
    required this.customerOwnedIp,
    required this.ipOwnerId,
    required this.publicDnsName,
    required this.publicIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': allocationId,
      'associationId': associationId,
      'carrierIp': carrierIp,
      'customerOwnedIp': customerOwnedIp,
      'ipOwnerId': ipOwnerId,
      'publicDnsName': publicDnsName,
      'publicIp': publicIp,
    };
  }

  factory GetNetworkInterfaceAssociation.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceAssociation(
      allocationId: map['allocationId'] as String,
      associationId: map['associationId'] as String,
      carrierIp: map['carrierIp'] as String,
      customerOwnedIp: map['customerOwnedIp'] as String,
      ipOwnerId: map['ipOwnerId'] as String,
      publicDnsName: map['publicDnsName'] as String,
      publicIp: map['publicIp'] as String,
    );
  }
}

