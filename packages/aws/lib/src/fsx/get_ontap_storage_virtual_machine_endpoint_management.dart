// ignore_for_file: unused_element, unnecessary_cast

class GetOntapStorageVirtualMachineEndpointManagement {
  final String dnsName;
  final List<String> ipAddresses;

  /// Creates a new [GetOntapStorageVirtualMachineEndpointManagement].
  /// [dnsName] Required.
  /// [ipAddresses] Required.
  GetOntapStorageVirtualMachineEndpointManagement({
    required this.dnsName,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dnsName': dnsName, 'ipAddresses': ipAddresses};
  }

  factory GetOntapStorageVirtualMachineEndpointManagement.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOntapStorageVirtualMachineEndpointManagement(
      dnsName: map['dnsName'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
    );
  }
}
