// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_protocol_properties_response.dart';
import 'private_endpoint_connection_response.dart';
import 'public_access_properties_response.dart';

/// File share properties
class FileSharePropertiesResponse {
  /// The host name of the file share.
  final pulumi.Input<String> hostName;

  /// Burst IOPS are extra buffer IOPS enabling you to consume more than your provisioned IOPS for a short period of time, depending on the burst credits available for your share.
  final pulumi.Input<int> includedBurstIOPerSec;

  /// Max burst IOPS credits shows the maximum number of burst credits the share can have at the current IOPS provisioning level.
  final pulumi.Input<double> maxBurstIOPerSecCredits;

  /// The storage media tier of the file share.
  final pulumi.Input<String>? mediaTier;

  /// The name of the file share as seen by the end user when mounting the share, such as in a URI or UNC format in their operating system.
  final pulumi.Input<String>? mountName;

  /// Protocol settings specific NFS.
  final pulumi.Input<NfsProtocolPropertiesResponse>? nfsProtocolProperties;

  /// The list of associated private endpoint connections.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>>
  privateEndpointConnections;

  /// The file sharing protocol for this file share.
  final pulumi.Input<String>? protocol;

  /// The provisioned IO / sec of the share.
  final pulumi.Input<int>? provisionedIOPerSec;

  /// A date/time value that specifies when the provisioned IOPS for the file share is permitted to be reduced.
  final pulumi.Input<String> provisionedIOPerSecNextAllowedDowngrade;

  /// The provisioned storage size of the share in GiB (1 GiB is 1024^3 bytes or 1073741824 bytes). A component of the file share's bill is the provisioned storage, regardless of the amount of used storage.
  final pulumi.Input<int>? provisionedStorageGiB;

  /// A date/time value that specifies when the provisioned storage for the file share is permitted to be reduced.
  final pulumi.Input<String> provisionedStorageNextAllowedDowngrade;

  /// The provisioned throughput / sec of the share.
  final pulumi.Input<int>? provisionedThroughputMiBPerSec;

  /// A date/time value that specifies when the provisioned throughput for the file share is permitted to be reduced.
  final pulumi.Input<String> provisionedThroughputNextAllowedDowngrade;

  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// The set of properties for control public access.
  final pulumi.Input<PublicAccessPropertiesResponse>? publicAccessProperties;

  /// Gets or sets allow or disallow public network access to azure managed file share
  final pulumi.Input<String>? publicNetworkAccess;

  /// The chosen redundancy level of the file share.
  final pulumi.Input<String>? redundancy;

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
      'nfsProtocolProperties':
          ?pulumi.Input.mapOptionalInputValue<
            NfsProtocolPropertiesResponse,
            Map<String, dynamic>
          >(nfsProtocolProperties, (value) => value.toMap()),
      'privateEndpointConnections':
          pulumi.Input.mapInputValue<
            List<PrivateEndpointConnectionResponse>,
            List<Map<String, dynamic>>
          >(
            privateEndpointConnections,
            (value) =>
                pulumi.Input.encodeList<
                  PrivateEndpointConnectionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'protocol': ?protocol,
      'provisionedIOPerSec': ?provisionedIOPerSec,
      'provisionedIOPerSecNextAllowedDowngrade':
          provisionedIOPerSecNextAllowedDowngrade,
      'provisionedStorageGiB': ?provisionedStorageGiB,
      'provisionedStorageNextAllowedDowngrade':
          provisionedStorageNextAllowedDowngrade,
      'provisionedThroughputMiBPerSec': ?provisionedThroughputMiBPerSec,
      'provisionedThroughputNextAllowedDowngrade':
          provisionedThroughputNextAllowedDowngrade,
      'provisioningState': provisioningState,
      'publicAccessProperties':
          ?pulumi.Input.mapOptionalInputValue<
            PublicAccessPropertiesResponse,
            Map<String, dynamic>
          >(publicAccessProperties, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'redundancy': ?redundancy,
    };
  }

  factory FileSharePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FileSharePropertiesResponse(
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      includedBurstIOPerSec: pulumi.Input.fromValue(
        map['includedBurstIOPerSec'] as int,
      ),
      maxBurstIOPerSecCredits: pulumi.Input.fromValue(
        map['maxBurstIOPerSecCredits'] as double,
      ),
      mediaTier: (() {
        final guardedValue = map['mediaTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountName: (() {
        final guardedValue = map['mountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nfsProtocolProperties: (() {
        final guardedValue = map['nfsProtocolProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NfsProtocolPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateEndpointConnections: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(
          map['privateEndpointConnections']!,
          (value) => PrivateEndpointConnectionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisionedIOPerSec: (() {
        final guardedValue = map['provisionedIOPerSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      provisionedIOPerSecNextAllowedDowngrade: pulumi.Input.fromValue(
        map['provisionedIOPerSecNextAllowedDowngrade'] as String,
      ),
      provisionedStorageGiB: (() {
        final guardedValue = map['provisionedStorageGiB'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      provisionedStorageNextAllowedDowngrade: pulumi.Input.fromValue(
        map['provisionedStorageNextAllowedDowngrade'] as String,
      ),
      provisionedThroughputMiBPerSec: (() {
        final guardedValue = map['provisionedThroughputMiBPerSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      provisionedThroughputNextAllowedDowngrade: pulumi.Input.fromValue(
        map['provisionedThroughputNextAllowedDowngrade'] as String,
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      publicAccessProperties: (() {
        final guardedValue = map['publicAccessProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PublicAccessPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      redundancy: (() {
        final guardedValue = map['redundancy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
