// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Replication properties
class ReplicationResponse {
  /// Indicates whether the local volume is the source or destination for the Volume Replication
  final pulumi.Input<String>? endpointType;
  /// The remote region for the other end of the Volume Replication.
  final pulumi.Input<String>? remoteVolumeRegion;
  /// The resource ID of the remote volume.
  final pulumi.Input<String> remoteVolumeResourceId;
  /// UUID v4 used to identify the replication.
  final pulumi.Input<String> replicationId;
  /// Schedule
  final pulumi.Input<String>? replicationSchedule;

  /// Creates a new [ReplicationResponse].
  /// [endpointType] Indicates whether the local volume is the source or destination for the Volume Replication
  /// [remoteVolumeRegion] The remote region for the other end of the Volume Replication.
  /// [remoteVolumeResourceId] The resource ID of the remote volume.
  /// [replicationId] UUID v4 used to identify the replication.
  /// [replicationSchedule] Schedule
  const ReplicationResponse({
    this.endpointType,
    this.remoteVolumeRegion,
    required this.remoteVolumeResourceId,
    required this.replicationId,
    this.replicationSchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': ?endpointType,
      'remoteVolumeRegion': ?remoteVolumeRegion,
      'remoteVolumeResourceId': remoteVolumeResourceId,
      'replicationId': replicationId,
      'replicationSchedule': ?replicationSchedule,
    };
  }

  factory ReplicationResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationResponse(
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteVolumeRegion: (() { final guardedValue = map['remoteVolumeRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteVolumeResourceId: pulumi.Input.fromValue(map['remoteVolumeResourceId'] as String),
      replicationId: pulumi.Input.fromValue(map['replicationId'] as String),
      replicationSchedule: (() { final guardedValue = map['replicationSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

