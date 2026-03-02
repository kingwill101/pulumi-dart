// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_protocol_properties.dart';
import 'public_access_properties.dart';

/// File share properties
class FileShareProperties {
  /// The storage media tier of the file share.
  final pulumi.Input<String>? mediaTier;
  /// The name of the file share as seen by the end user when mounting the share, such as in a URI or UNC format in their operating system.
  final pulumi.Input<String>? mountName;
  /// Protocol settings specific NFS.
  final pulumi.Input<NfsProtocolProperties>? nfsProtocolProperties;
  /// The file sharing protocol for this file share.
  final pulumi.Input<String>? protocol;
  /// The provisioned IO / sec of the share.
  final pulumi.Input<int>? provisionedIOPerSec;
  /// The provisioned storage size of the share in GiB (1 GiB is 1024^3 bytes or 1073741824 bytes). A component of the file share's bill is the provisioned storage, regardless of the amount of used storage.
  final pulumi.Input<int>? provisionedStorageGiB;
  /// The provisioned throughput / sec of the share.
  final pulumi.Input<int>? provisionedThroughputMiBPerSec;
  /// The set of properties for control public access.
  final pulumi.Input<PublicAccessProperties>? publicAccessProperties;
  /// Gets or sets allow or disallow public network access to azure managed file share
  final pulumi.Input<String>? publicNetworkAccess;
  /// The chosen redundancy level of the file share.
  final pulumi.Input<String>? redundancy;

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
      'nfsProtocolProperties': ?pulumi.Input.mapOptionalInputValue<NfsProtocolProperties, Map<String, dynamic>>(nfsProtocolProperties, (value) => value.toMap()),
      'protocol': ?protocol,
      'provisionedIOPerSec': ?provisionedIOPerSec,
      'provisionedStorageGiB': ?provisionedStorageGiB,
      'provisionedThroughputMiBPerSec': ?provisionedThroughputMiBPerSec,
      'publicAccessProperties': ?pulumi.Input.mapOptionalInputValue<PublicAccessProperties, Map<String, dynamic>>(publicAccessProperties, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'redundancy': ?redundancy,
    };
  }

  factory FileShareProperties.fromMap(Map<String, dynamic> map) {
    return FileShareProperties(
      mediaTier: map['mediaTier'] == null ? null : (map['mediaTier'] as String).input(),
      mountName: map['mountName'] == null ? null : (map['mountName'] as String).input(),
      nfsProtocolProperties: map['nfsProtocolProperties'] == null ? null : (NfsProtocolProperties.fromMap((map['nfsProtocolProperties'] as Map).cast<String, dynamic>())).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      provisionedIOPerSec: map['provisionedIOPerSec'] == null ? null : (map['provisionedIOPerSec'] as int).input(),
      provisionedStorageGiB: map['provisionedStorageGiB'] == null ? null : (map['provisionedStorageGiB'] as int).input(),
      provisionedThroughputMiBPerSec: map['provisionedThroughputMiBPerSec'] == null ? null : (map['provisionedThroughputMiBPerSec'] as int).input(),
      publicAccessProperties: map['publicAccessProperties'] == null ? null : (PublicAccessProperties.fromMap((map['publicAccessProperties'] as Map).cast<String, dynamic>())).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      redundancy: map['redundancy'] == null ? null : (map['redundancy'] as String).input(),
    );
  }
}

