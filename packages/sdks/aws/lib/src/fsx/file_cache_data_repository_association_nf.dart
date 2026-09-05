// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileCacheDataRepositoryAssociationNf {
  /// Up to 2 IP addresses of DNS servers used to resolve the NFS file system domain name.
  final pulumi.Input<List<String>?>? dnsIps;
  /// Version of the NFS protocol of the NFS data repository. The only supported value is `NFS3`.
  final pulumi.Input<String> version;

  /// Creates a new [FileCacheDataRepositoryAssociationNf].
  /// [dnsIps] Up to 2 IP addresses of DNS servers used to resolve the NFS file system domain name.
  /// [version] Version of the NFS protocol of the NFS data repository. The only supported value is `NFS3`.
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
