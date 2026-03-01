// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceNetworkInterfaceAssociation
class InstanceNetworkInterfaceAssociationResponse {
  /// <p>The carrier IP address associated with the network interface.</p>
  final String? carrierIp;
  /// <p>The customer-owned IP address associated with the network interface.</p>
  final String? customerOwnedIp;
  /// <p>The ID of the owner of the Elastic IP address.</p>
  final String? ipOwnerId;
  /// <p>The public DNS name.</p>
  final String? publicDnsName;
  /// <p>The public IP address or Elastic IP address bound to the network interface.</p>
  final String? publicIp;

  /// Creates a new [InstanceNetworkInterfaceAssociationResponse].
  /// [carrierIp] <p>The carrier IP address associated with the network interface.</p>
  /// [customerOwnedIp] <p>The customer-owned IP address associated with the network interface.</p>
  /// [ipOwnerId] <p>The ID of the owner of the Elastic IP address.</p>
  /// [publicDnsName] <p>The public DNS name.</p>
  /// [publicIp] <p>The public IP address or Elastic IP address bound to the network interface.</p>
  InstanceNetworkInterfaceAssociationResponse({
    this.carrierIp,
    this.customerOwnedIp,
    this.ipOwnerId,
    this.publicDnsName,
    this.publicIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierIp': ?carrierIp,
      'customerOwnedIp': ?customerOwnedIp,
      'ipOwnerId': ?ipOwnerId,
      'publicDnsName': ?publicDnsName,
      'publicIp': ?publicIp,
    };
  }

  factory InstanceNetworkInterfaceAssociationResponse.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkInterfaceAssociationResponse(
      carrierIp: map['carrierIp'] == null ? null : map['carrierIp'] as String,
      customerOwnedIp: map['customerOwnedIp'] == null ? null : map['customerOwnedIp'] as String,
      ipOwnerId: map['ipOwnerId'] == null ? null : map['ipOwnerId'] as String,
      publicDnsName: map['publicDnsName'] == null ? null : map['publicDnsName'] as String,
      publicIp: map['publicIp'] == null ? null : map['publicIp'] as String,
    );
  }
}

