// ignore_for_file: unused_element, unnecessary_cast

class GetOntapStorageVirtualMachineEndpointNf {
  final String dnsName;
  final List<String> ipAddresses;

  /// Creates a new [GetOntapStorageVirtualMachineEndpointNf].
  /// [dnsName] Required.
  /// [ipAddresses] Required.
  GetOntapStorageVirtualMachineEndpointNf({
    required this.dnsName,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dnsName': dnsName, 'ipAddresses': ipAddresses};
  }

  factory GetOntapStorageVirtualMachineEndpointNf.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOntapStorageVirtualMachineEndpointNf(
      dnsName: map['dnsName'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
    );
  }
}
