// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOntapFileSystemEndpointManagement {
  /// DNS name for the file system.
  final pulumi.Input<String> dnsName;
  final pulumi.Input<List<String>> ipAddresses;

  /// Creates a new [GetOntapFileSystemEndpointManagement].
  /// [dnsName] DNS name for the file system.
  /// [ipAddresses] Required.
  const GetOntapFileSystemEndpointManagement({
    required this.dnsName,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': dnsName,
      'ipAddresses': ipAddresses,
    };
  }

  factory GetOntapFileSystemEndpointManagement.fromMap(Map<String, dynamic> map) {
    return GetOntapFileSystemEndpointManagement(
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      ipAddresses: pulumi.Input.fromValue((map['ipAddresses'] as List).cast<String>()),
    );
  }
}

