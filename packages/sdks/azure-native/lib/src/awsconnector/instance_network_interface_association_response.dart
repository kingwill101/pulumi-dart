// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceNetworkInterfaceAssociation
class InstanceNetworkInterfaceAssociationResponse {
  /// &lt;p&gt;The carrier IP address associated with the network interface.&lt;/p&gt;
  final pulumi.Input<String>? carrierIp;
  /// &lt;p&gt;The customer-owned IP address associated with the network interface.&lt;/p&gt;
  final pulumi.Input<String>? customerOwnedIp;
  /// &lt;p&gt;The ID of the owner of the Elastic IP address.&lt;/p&gt;
  final pulumi.Input<String>? ipOwnerId;
  /// &lt;p&gt;The public DNS name.&lt;/p&gt;
  final pulumi.Input<String>? publicDnsName;
  /// &lt;p&gt;The public IP address or Elastic IP address bound to the network interface.&lt;/p&gt;
  final pulumi.Input<String>? publicIp;

  /// Creates a new [InstanceNetworkInterfaceAssociationResponse].
  /// [carrierIp] &lt;p&gt;The carrier IP address associated with the network interface.&lt;/p&gt;
  /// [customerOwnedIp] &lt;p&gt;The customer-owned IP address associated with the network interface.&lt;/p&gt;
  /// [ipOwnerId] &lt;p&gt;The ID of the owner of the Elastic IP address.&lt;/p&gt;
  /// [publicDnsName] &lt;p&gt;The public DNS name.&lt;/p&gt;
  /// [publicIp] &lt;p&gt;The public IP address or Elastic IP address bound to the network interface.&lt;/p&gt;
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
      carrierIp: (() { final guardedValue = map['carrierIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerOwnedIp: (() { final guardedValue = map['customerOwnedIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipOwnerId: (() { final guardedValue = map['ipOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicDnsName: (() { final guardedValue = map['publicDnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIp: (() { final guardedValue = map['publicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

