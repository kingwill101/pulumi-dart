// ignore_for_file: unused_element, unnecessary_cast

import 'nfs_protocol_properties.dart';
import 'public_access_properties.dart';

/// File share properties
class FileShareProperties {
  /// The storage media tier of the file share.
  final String? mediaTier;
  /// The name of the file share as seen by the end user when mounting the share, such as in a URI or UNC format in their operating system.
  final String? mountName;
  /// Protocol settings specific NFS.
  final NfsProtocolProperties? nfsProtocolProperties;
  /// The file sharing protocol for this file share.
  final String? protocol;
  /// The provisioned IO / sec of the share.
  final int? provisionedIOPerSec;
  /// The provisioned storage size of the share in GiB (1 GiB is 1024^3 bytes or 1073741824 bytes). A component of the file share's bill is the provisioned storage, regardless of the amount of used storage.
  final int? provisionedStorageGiB;
  /// The provisioned throughput / sec of the share.
  final int? provisionedThroughputMiBPerSec;
  /// The set of properties for control public access.
  final PublicAccessProperties? publicAccessProperties;
  /// Gets or sets allow or disallow public network access to azure managed file share
  final String? publicNetworkAccess;
  /// The chosen redundancy level of the file share.
  final String? redundancy;

  /// Creates a new [FileShareProperties].
  /// [mediaTier] The storage media tier of the file share.
  /// [mountName] The name of the file share as seen by the end user when mounting the share, such as in a URI or UNC format in their operating system.
  /// [nfsProtocolProperties] Protocol settings specific NFS.
  /// [protocol] The file sharing protocol for this file share.
  /// [provisionedIOPerSec] The provisioned IO / sec of the share.
  /// [provisionedStorageGiB] The provisioned storage size of the share in GiB (1 GiB is 1024^3 bytes or 1073741824 bytes). A component of the file share's bill is the provisioned storage, regardless of the amount of used storage.
  /// [provisionedThroughputMiBPerSec] The provisioned throughput / sec of the share.
  /// [publicAccessProperties] The set of properties for control public access.
  /// [publicNetworkAccess] Gets or sets allow or disallow public network access to azure managed file share
  /// [redundancy] The chosen redundancy level of the file share.
  FileShareProperties({
    this.mediaTier,
    this.mountName,
    this.nfsProtocolProperties,
    this.protocol,
    this.provisionedIOPerSec,
    this.provisionedStorageGiB,
    this.provisionedThroughputMiBPerSec,
    this.publicAccessProperties,
    this.publicNetworkAccess,
    this.redundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mediaTier': ?mediaTier,
      'mountName': ?mountName,
      'nfsProtocolProperties': ?nfsProtocolProperties == null ? null : nfsProtocolProperties!.toMap(),
      'protocol': ?protocol,
      'provisionedIOPerSec': ?provisionedIOPerSec,
      'provisionedStorageGiB': ?provisionedStorageGiB,
      'provisionedThroughputMiBPerSec': ?provisionedThroughputMiBPerSec,
      'publicAccessProperties': ?publicAccessProperties == null ? null : publicAccessProperties!.toMap(),
      'publicNetworkAccess': ?publicNetworkAccess,
      'redundancy': ?redundancy,
    };
  }

  factory FileShareProperties.fromMap(Map<String, dynamic> map) {
    return FileShareProperties(
      mediaTier: map['mediaTier'] == null ? null : map['mediaTier'] as String,
      mountName: map['mountName'] == null ? null : map['mountName'] as String,
      nfsProtocolProperties: map['nfsProtocolProperties'] == null ? null : NfsProtocolProperties.fromMap((map['nfsProtocolProperties'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      provisionedIOPerSec: map['provisionedIOPerSec'] == null ? null : map['provisionedIOPerSec'] as int,
      provisionedStorageGiB: map['provisionedStorageGiB'] == null ? null : map['provisionedStorageGiB'] as int,
      provisionedThroughputMiBPerSec: map['provisionedThroughputMiBPerSec'] == null ? null : map['provisionedThroughputMiBPerSec'] as int,
      publicAccessProperties: map['publicAccessProperties'] == null ? null : PublicAccessProperties.fromMap((map['publicAccessProperties'] as Map).cast<String, dynamic>()),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      redundancy: map['redundancy'] == null ? null : map['redundancy'] as String,
    );
  }
}

