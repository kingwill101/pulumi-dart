// ignore_for_file: unused_element, unnecessary_cast

class OntapStorageVirtualMachineEndpointSmb {
  /// The Domain Name Service (DNS) name for the storage virtual machine. You can mount your storage virtual machine using its DNS name.
  final String? dnsName;

  /// IP addresses of the storage virtual machine endpoint.
  final List<String>? ipAddresses;

  OntapStorageVirtualMachineEndpointSmb({
    this.dnsName,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsNameValue = dnsName;
    if (dnsNameValue != null) {
      map['dnsName'] = dnsNameValue;
    }
    final ipAddressesValue = ipAddresses;
    if (ipAddressesValue != null) {
      map['ipAddresses'] = ipAddressesValue;
    }
    return map;
  }

  factory OntapStorageVirtualMachineEndpointSmb.fromMap(
      Map<String, dynamic> map) {
    return OntapStorageVirtualMachineEndpointSmb(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      ipAddresses: map['ipAddresses'] == null
          ? null
          : (map['ipAddresses'] as List).cast<String>(),
    );
  }
}
