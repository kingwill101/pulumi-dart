// ignore_for_file: unused_element, unnecessary_cast

class GetOntapStorageVirtualMachineEndpointSmb {
  final String dnsName;
  final List<String> ipAddresses;

  /// Creates a new [GetOntapStorageVirtualMachineEndpointSmb].
  /// [dnsName] Required.
  /// [ipAddresses] Required.
  GetOntapStorageVirtualMachineEndpointSmb({
    required this.dnsName,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsName'] = dnsName;
    map['ipAddresses'] = ipAddresses;
    return map;
  }

  factory GetOntapStorageVirtualMachineEndpointSmb.fromMap(
      Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineEndpointSmb(
      dnsName: map['dnsName'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
    );
  }
}
