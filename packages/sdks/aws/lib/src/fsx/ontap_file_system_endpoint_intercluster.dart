// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OntapFileSystemEndpointIntercluster {
  /// The Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  final pulumi.Input<String>? dnsName;
  /// IP addresses of the file system endpoint.
  final pulumi.Input<List<String>>? ipAddresses;

  /// Creates a new [OntapFileSystemEndpointIntercluster].
  /// [dnsName] The Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  /// [ipAddresses] IP addresses of the file system endpoint.
  OntapFileSystemEndpointIntercluster({
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
      dnsName: map['dnsName'] == null ? null : ((map['dnsName'] as String).input()).input(),
      ipAddresses: map['ipAddresses'] == null ? null : (((map['ipAddresses'] as List).cast<String>()).input()).input(),
    );
  }
}

