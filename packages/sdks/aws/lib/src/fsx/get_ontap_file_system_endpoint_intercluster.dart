// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOntapFileSystemEndpointIntercluster {
  /// File system's DNS name. You can mount your file system using its DNS name.
  final pulumi.Input<String> dnsName;
  /// IP addresses of the file system endpoint.
  final pulumi.Input<List<String>> ipAddresses;

  /// Creates a new [GetOntapFileSystemEndpointIntercluster].
  /// [dnsName] File system's DNS name. You can mount your file system using its DNS name.
  /// [ipAddresses] IP addresses of the file system endpoint.
  const GetOntapFileSystemEndpointIntercluster({
    required this.dnsName,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': dnsName,
      'ipAddresses': ipAddresses,
    };
  }

  factory GetOntapFileSystemEndpointIntercluster.fromMap(Map<String, dynamic> map) {
    return GetOntapFileSystemEndpointIntercluster(
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      ipAddresses: pulumi.Input.fromValue((map['ipAddresses'] as List).cast<String>()),
    );
  }
}
