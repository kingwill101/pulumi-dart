// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOntapStorageVirtualMachineEndpointNf {
  /// SVM endpoint's DNS name.
  final pulumi.Input<String> dnsName;
  /// SVM endpoint's IP addresses.
  final pulumi.Input<List<String>> ipAddresses;

  /// Creates a new [GetOntapStorageVirtualMachineEndpointNf].
  /// [dnsName] SVM endpoint's DNS name.
  /// [ipAddresses] SVM endpoint's IP addresses.
  const GetOntapStorageVirtualMachineEndpointNf({
    required this.dnsName,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': dnsName,
      'ipAddresses': ipAddresses,
    };
  }

  factory GetOntapStorageVirtualMachineEndpointNf.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineEndpointNf(
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      ipAddresses: pulumi.Input.fromValue((map['ipAddresses'] as List).cast<String>()),
    );
  }
}
