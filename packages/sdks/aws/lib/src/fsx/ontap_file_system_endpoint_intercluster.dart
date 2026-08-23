// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OntapFileSystemEndpointIntercluster {
  /// Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  final pulumi.Input<String>? dnsName;
  /// IP addresses of the file system endpoint.
  final pulumi.Input<List<String>>? ipAddresses;

  /// Creates a new [OntapFileSystemEndpointIntercluster].
  /// [dnsName] Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  /// [ipAddresses] IP addresses of the file system endpoint.
  const OntapFileSystemEndpointIntercluster({
    this.dnsName,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'ipAddresses': ?ipAddresses,
    };
  }

  factory OntapFileSystemEndpointIntercluster.fromMap(Map<String, dynamic> map) {
    return OntapFileSystemEndpointIntercluster(
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
