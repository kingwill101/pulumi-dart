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
  const FileShareProperties({
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
      mediaTier: (() { final guardedValue = map['mediaTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mountName: (() { final guardedValue = map['mountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfsProtocolProperties: (() { final guardedValue = map['nfsProtocolProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NfsProtocolProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedIOPerSec: (() { final guardedValue = map['provisionedIOPerSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisionedStorageGiB: (() { final guardedValue = map['provisionedStorageGiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisionedThroughputMiBPerSec: (() { final guardedValue = map['provisionedThroughputMiBPerSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      publicAccessProperties: (() { final guardedValue = map['publicAccessProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicAccessProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redundancy: (() { final guardedValue = map['redundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
