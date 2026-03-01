// ignore_for_file: unused_element, unnecessary_cast


class OntapStorageVirtualMachineEndpointIscsi {
  /// The Domain Name Service (DNS) name for the storage virtual machine. You can mount your storage virtual machine using its DNS name.
  final String? dnsName;
  /// IP addresses of the storage virtual machine endpoint.
  final List<String>? ipAddresses;

  /// Creates a new [OntapStorageVirtualMachineEndpointIscsi].
  /// [dnsName] The Domain Name Service (DNS) name for the storage virtual machine. You can mount your storage virtual machine using its DNS name.
  /// [ipAddresses] IP addresses of the storage virtual machine endpoint.
  OntapStorageVirtualMachineEndpointIscsi({
    this.dnsName,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'ipAddresses': ?ipAddresses,
    };
  }

  factory OntapStorageVirtualMachineEndpointIscsi.fromMap(Map<String, dynamic> map) {
    return OntapStorageVirtualMachineEndpointIscsi(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
    );
  }
}

