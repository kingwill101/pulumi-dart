// ignore_for_file: unused_element, unnecessary_cast

class GetOntapStorageVirtualMachineEndpointIscsi {
  final String dnsName;
  final List<String> ipAddresses;

  /// Creates a new [GetOntapStorageVirtualMachineEndpointIscsi].
  /// [dnsName] Required.
  /// [ipAddresses] Required.
  GetOntapStorageVirtualMachineEndpointIscsi({
    required this.dnsName,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dnsName': dnsName, 'ipAddresses': ipAddresses};
  }

  factory GetOntapStorageVirtualMachineEndpointIscsi.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOntapStorageVirtualMachineEndpointIscsi(
      dnsName: map['dnsName'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
    );
  }
}
