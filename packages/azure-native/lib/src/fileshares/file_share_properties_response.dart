// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_protocol_properties_response.dart';
import 'private_endpoint_connection_response.dart';
import 'public_access_properties_response.dart';

/// File share properties
class FileSharePropertiesResponse {
  /// The host name of the file share.
  final String hostName;
  /// Burst IOPS are extra buffer IOPS enabling you to consume more than your provisioned IOPS for a short period of time, depending on the burst credits available for your share.
  final int includedBurstIOPerSec;
  /// Max burst IOPS credits shows the maximum number of burst credits the share can have at the current IOPS provisioning level.
  final double maxBurstIOPerSecCredits;
  /// The storage media tier of the file share.
  final String? mediaTier;
  /// The name of the file share as seen by the end user when mounting the share, such as in a URI or UNC format in their operating system.
  final String? mountName;
  /// Protocol settings specific NFS.
  final NfsProtocolPropertiesResponse? nfsProtocolProperties;
  /// The list of associated private endpoint connections.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// The file sharing protocol for this file share.
  final String? protocol;
  /// The provisioned IO / sec of the share.
  final int? provisionedIOPerSec;
  /// A date/time value that specifies when the provisioned IOPS for the file share is permitted to be reduced.
  final String provisionedIOPerSecNextAllowedDowngrade;
  /// The provisioned storage size of the share in GiB (1 GiB is 1024^3 bytes or 1073741824 bytes). A component of the file share's bill is the provisioned storage, regardless of the amount of used storage.
  final int? provisionedStorageGiB;
  /// A date/time value that specifies when the provisioned storage for the file share is permitted to be reduced.
  final String provisionedStorageNextAllowedDowngrade;
  /// The provisioned throughput / sec of the share.
  final int? provisionedThroughputMiBPerSec;
  /// A date/time value that specifies when the provisioned throughput for the file share is permitted to be reduced.
  final String provisionedThroughputNextAllowedDowngrade;
  /// The status of the last operation.
  final String provisioningState;
  /// The set of properties for control public access.
  final PublicAccessPropertiesResponse? publicAccessProperties;
  /// Gets or sets allow or disallow public network access to azure managed file share
  final String? publicNetworkAccess;
  /// The chosen redundancy level of the file share.
  final String? redundancy;

  /// Creates a new [FileSharePropertiesResponse].
  /// [hostName] The host name of the file share.
  /// [includedBurstIOPerSec] Burst IOPS are extra buffer IOPS enabling you to consume more than your provisioned IOPS for a short period of time, depending on the burst credits available for your share.
  /// [maxBurstIOPerSecCredits] Max burst IOPS credits shows the maximum number of burst credits the share can have at the current IOPS provisioning level.
  /// [mediaTier] The storage media tier of the file share.
  /// [mountName] The name of the file share as seen by the end user when mounting the share, such as in a URI or UNC format in their operating system.
  /// [nfsProtocolProperties] Protocol settings specific NFS.
  /// [privateEndpointConnections] The list of associated private endpoint connections.
  /// [protocol] The file sharing protocol for this file share.
  /// [provisionedIOPerSec] The provisioned IO / sec of the share.
  /// [provisionedIOPerSecNextAllowedDowngrade] A date/time value that specifies when the provisioned IOPS for the file share is permitted to be reduced.
  /// [provisionedStorageGiB] The provisioned storage size of the share in GiB (1 GiB is 1024^3 bytes or 1073741824 bytes). A component of the file share's bill is the provisioned storage, regardless of the amount of used storage.
  /// [provisionedStorageNextAllowedDowngrade] A date/time value that specifies when the provisioned storage for the file share is permitted to be reduced.
  /// [provisionedThroughputMiBPerSec] The provisioned throughput / sec of the share.
  /// [provisionedThroughputNextAllowedDowngrade] A date/time value that specifies when the provisioned throughput for the file share is permitted to be reduced.
  /// [provisioningState] The status of the last operation.
  /// [publicAccessProperties] The set of properties for control public access.
  /// [publicNetworkAccess] Gets or sets allow or disallow public network access to azure managed file share
  /// [redundancy] The chosen redundancy level of the file share.
  FileSharePropertiesResponse({
    required this.hostName,
    required this.includedBurstIOPerSec,
    required this.maxBurstIOPerSecCredits,
    this.mediaTier,
    this.mountName,
    this.nfsProtocolProperties,
    required this.privateEndpointConnections,
    this.protocol,
    this.provisionedIOPerSec,
    required this.provisionedIOPerSecNextAllowedDowngrade,
    this.provisionedStorageGiB,
    required this.provisionedStorageNextAllowedDowngrade,
    this.provisionedThroughputMiBPerSec,
    required this.provisionedThroughputNextAllowedDowngrade,
    required this.provisioningState,
    this.publicAccessProperties,
    this.publicNetworkAccess,
    this.redundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'includedBurstIOPerSec': includedBurstIOPerSec,
      'maxBurstIOPerSecCredits': maxBurstIOPerSecCredits,
      'mediaTier': ?mediaTier,
      'mountName': ?mountName,
      'nfsProtocolProperties': ?nfsProtocolProperties == null ? null : nfsProtocolProperties!.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'protocol': ?protocol,
      'provisionedIOPerSec': ?provisionedIOPerSec,
      'provisionedIOPerSecNextAllowedDowngrade': provisionedIOPerSecNextAllowedDowngrade,
      'provisionedStorageGiB': ?provisionedStorageGiB,
      'provisionedStorageNextAllowedDowngrade': provisionedStorageNextAllowedDowngrade,
      'provisionedThroughputMiBPerSec': ?provisionedThroughputMiBPerSec,
      'provisionedThroughputNextAllowedDowngrade': provisionedThroughputNextAllowedDowngrade,
      'provisioningState': provisioningState,
      'publicAccessProperties': ?publicAccessProperties == null ? null : publicAccessProperties!.toMap(),
      'publicNetworkAccess': ?publicNetworkAccess,
      'redundancy': ?redundancy,
    };
  }

  factory FileSharePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FileSharePropertiesResponse(
      hostName: map['hostName'] as String,
      includedBurstIOPerSec: map['includedBurstIOPerSec'] as int,
      maxBurstIOPerSecCredits: map['maxBurstIOPerSecCredits'] as double,
      mediaTier: map['mediaTier'] == null ? null : map['mediaTier'] as String,
      mountName: map['mountName'] == null ? null : map['mountName'] as String,
      nfsProtocolProperties: map['nfsProtocolProperties'] == null ? null : NfsProtocolPropertiesResponse.fromMap((map['nfsProtocolProperties'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      provisionedIOPerSec: map['provisionedIOPerSec'] == null ? null : map['provisionedIOPerSec'] as int,
      provisionedIOPerSecNextAllowedDowngrade: map['provisionedIOPerSecNextAllowedDowngrade'] as String,
      provisionedStorageGiB: map['provisionedStorageGiB'] == null ? null : map['provisionedStorageGiB'] as int,
      provisionedStorageNextAllowedDowngrade: map['provisionedStorageNextAllowedDowngrade'] as String,
      provisionedThroughputMiBPerSec: map['provisionedThroughputMiBPerSec'] == null ? null : map['provisionedThroughputMiBPerSec'] as int,
      provisionedThroughputNextAllowedDowngrade: map['provisionedThroughputNextAllowedDowngrade'] as String,
      provisioningState: map['provisioningState'] as String,
      publicAccessProperties: map['publicAccessProperties'] == null ? null : PublicAccessPropertiesResponse.fromMap((map['publicAccessProperties'] as Map).cast<String, dynamic>()),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      redundancy: map['redundancy'] == null ? null : map['redundancy'] as String,
    );
  }
}

