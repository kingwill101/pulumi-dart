// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileCacheDataRepositoryAssociationNf {
  /// A list of up to 2 IP addresses of DNS servers used to resolve the NFS file system domain name. The provided IP addresses can either be the IP addresses of a DNS forwarder or resolver that the customer manages and runs inside the customer VPC, or the IP addresses of the on-premises DNS servers.
  final pulumi.Input<List<String>>? dnsIps;
  /// The version of the NFS (Network File System) protocol of the NFS data repository. The only supported value is NFS3, which indicates that the data repository must support the NFSv3 protocol. The only supported value is `NFS3`.
  final pulumi.Input<String> version;

  /// Creates a new [FileCacheDataRepositoryAssociationNf].
  /// [dnsIps] A list of up to 2 IP addresses of DNS servers used to resolve the NFS file system domain name. The provided IP addresses can either be the IP addresses of a DNS forwarder or resolver that the customer manages and runs inside the customer VPC, or the IP addresses of the on-premises DNS servers.
  /// [version] The version of the NFS (Network File System) protocol of the NFS data repository. The only supported value is NFS3, which indicates that the data repository must support the NFSv3 protocol. The only supported value is `NFS3`.
  const FileCacheDataRepositoryAssociationNf({
    this.dnsIps,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsIps': ?dnsIps,
      'version': version,
    };
  }

  factory FileCacheDataRepositoryAssociationNf.fromMap(Map<String, dynamic> map) {
    return FileCacheDataRepositoryAssociationNf(
      dnsIps: (() { final guardedValue = map['dnsIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

