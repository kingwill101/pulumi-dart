// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OntapStorageVirtualMachineEndpointNf {
  /// Domain Name Service (DNS) name for the storage virtual machine. You can mount your storage virtual machine using its DNS name.
  final pulumi.Input<String?>? dnsName;
  /// IP addresses of the storage virtual machine endpoint.
  final pulumi.Input<List<String>?>? ipAddresses;

  /// Creates a new [OntapStorageVirtualMachineEndpointNf].
  /// [dnsName] Domain Name Service (DNS) name for the storage virtual machine. You can mount your storage virtual machine using its DNS name.
  /// [ipAddresses] IP addresses of the storage virtual machine endpoint.
  const OntapStorageVirtualMachineEndpointNf({
    this.dnsName,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'ipAddresses': ?ipAddresses,
    };
  }

  factory OntapStorageVirtualMachineEndpointNf.fromMap(Map<String, dynamic> map) {
    return OntapStorageVirtualMachineEndpointNf(
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
