// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_path_response.dart';

/// Replication properties
class ReplicationObjectResponse {
  /// Indicates whether the local volume is the source or destination for the Volume Replication
  final pulumi.Input<String>? endpointType;
  /// The full path to a volume that is to be migrated into ANF. Required for Migration volumes
  final pulumi.Input<RemotePathResponse>? remotePath;
  /// The remote region for the other end of the Volume Replication.
  final pulumi.Input<String>? remoteVolumeRegion;
  /// The resource ID of the remote volume. Required for cross region and cross zone replication
  final pulumi.Input<String>? remoteVolumeResourceId;
  /// Id
  final pulumi.Input<String> replicationId;
  /// Schedule
  final pulumi.Input<String>? replicationSchedule;

  /// Creates a new [ReplicationObjectResponse].
  /// [endpointType] Indicates whether the local volume is the source or destination for the Volume Replication
  /// [remotePath] The full path to a volume that is to be migrated into ANF. Required for Migration volumes
  /// [remoteVolumeRegion] The remote region for the other end of the Volume Replication.
  /// [remoteVolumeResourceId] The resource ID of the remote volume. Required for cross region and cross zone replication
  /// [replicationId] Id
  /// [replicationSchedule] Schedule
  ReplicationObjectResponse({
    this.endpointType,
    this.remotePath,
    this.remoteVolumeRegion,
    this.remoteVolumeResourceId,
    required this.replicationId,
    this.replicationSchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': ?endpointType,
      'remotePath': ?pulumi.Input.mapOptionalInputValue<RemotePathResponse, Map<String, dynamic>>(remotePath, (value) => value.toMap()),
      'remoteVolumeRegion': ?remoteVolumeRegion,
      'remoteVolumeResourceId': ?remoteVolumeResourceId,
      'replicationId': replicationId,
      'replicationSchedule': ?replicationSchedule,
    };
  }

  factory ReplicationObjectResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationObjectResponse(
      endpointType: map['endpointType'] == null ? null : (map['endpointType']! as String).input(),
      remotePath: map['remotePath'] == null ? null : (RemotePathResponse.fromMap((map['remotePath']! as Map).cast<String, dynamic>())).input(),
      remoteVolumeRegion: map['remoteVolumeRegion'] == null ? null : (map['remoteVolumeRegion']! as String).input(),
      remoteVolumeResourceId: map['remoteVolumeResourceId'] == null ? null : (map['remoteVolumeResourceId']! as String).input(),
      replicationId: (map['replicationId'] as String).input(),
      replicationSchedule: map['replicationSchedule'] == null ? null : (map['replicationSchedule']! as String).input(),
    );
  }
}

