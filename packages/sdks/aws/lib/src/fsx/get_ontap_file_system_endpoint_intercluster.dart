// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOntapFileSystemEndpointIntercluster {
  /// DNS name for the file system.
  final pulumi.Input<String> dnsName;
  final pulumi.Input<List<String>> ipAddresses;

  /// Creates a new [GetOntapFileSystemEndpointIntercluster].
  /// [dnsName] DNS name for the file system.
  /// [ipAddresses] Required.
  GetOntapFileSystemEndpointIntercluster({
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
      dnsName: (map['dnsName'] as String).input(),
      ipAddresses: ((map['ipAddresses'] as List).cast<String>()).input(),
    );
  }
}

