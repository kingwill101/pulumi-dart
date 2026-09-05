// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OntapFileSystemEndpointManagement {
  /// Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  final pulumi.Input<String?>? dnsName;
  /// IP addresses of the file system endpoint.
  final pulumi.Input<List<String>?>? ipAddresses;

  /// Creates a new [OntapFileSystemEndpointManagement].
  /// [dnsName] Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  /// [ipAddresses] IP addresses of the file system endpoint.
  const OntapFileSystemEndpointManagement({
    this.dnsName,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'ipAddresses': ?ipAddresses,
    };
  }

  factory OntapFileSystemEndpointManagement.fromMap(Map<String, dynamic> map) {
    return OntapFileSystemEndpointManagement(
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
