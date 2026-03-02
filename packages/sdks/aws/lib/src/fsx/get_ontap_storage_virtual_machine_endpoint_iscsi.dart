// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOntapStorageVirtualMachineEndpointIscsi {
  final pulumi.Input<String> dnsName;
  final pulumi.Input<List<String>> ipAddresses;

  /// Creates a new [GetOntapStorageVirtualMachineEndpointIscsi].
  /// [dnsName] Required.
  /// [ipAddresses] Required.
  GetOntapStorageVirtualMachineEndpointIscsi({
    required this.dnsName,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': dnsName,
      'ipAddresses': ipAddresses,
    };
  }

  factory GetOntapStorageVirtualMachineEndpointIscsi.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineEndpointIscsi(
      dnsName: (map['dnsName'] as String).input(),
      ipAddresses: ((map['ipAddresses'] as List).cast<String>()).input(),
    );
  }
}

