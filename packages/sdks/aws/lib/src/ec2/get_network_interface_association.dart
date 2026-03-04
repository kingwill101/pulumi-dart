// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInterfaceAssociation {
  /// Allocation ID.
  final pulumi.Input<String> allocationId;

  /// Association ID.
  final pulumi.Input<String> associationId;

  /// Carrier IP address associated with the network interface. This attribute is only set when the network interface is in a subnet which is associated with a Wavelength Zone.
  final pulumi.Input<String> carrierIp;

  /// Customer-owned IP address.
  final pulumi.Input<String> customerOwnedIp;

  /// ID of the Elastic IP address owner.
  final pulumi.Input<String> ipOwnerId;

  /// Public DNS name.
  final pulumi.Input<String> publicDnsName;

  /// Address of the Elastic IP address bound to the network interface.
  final pulumi.Input<String> publicIp;

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
      allocationId: pulumi.Input.fromValue(map['allocationId'] as String),
      associationId: pulumi.Input.fromValue(map['associationId'] as String),
      carrierIp: pulumi.Input.fromValue(map['carrierIp'] as String),
      customerOwnedIp: pulumi.Input.fromValue(map['customerOwnedIp'] as String),
      ipOwnerId: pulumi.Input.fromValue(map['ipOwnerId'] as String),
      publicDnsName: pulumi.Input.fromValue(map['publicDnsName'] as String),
      publicIp: pulumi.Input.fromValue(map['publicIp'] as String),
    );
  }
}
