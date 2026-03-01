// ignore_for_file: unused_element, unnecessary_cast


/// Replication properties
class ReplicationResponse {
  /// Indicates whether the local volume is the source or destination for the Volume Replication
  final String? endpointType;
  /// The remote region for the other end of the Volume Replication.
  final String? remoteVolumeRegion;
  /// The resource ID of the remote volume.
  final String remoteVolumeResourceId;
  /// UUID v4 used to identify the replication.
  final String replicationId;
  /// Schedule
  final String? replicationSchedule;

  /// Creates a new [ReplicationResponse].
  /// [endpointType] Indicates whether the local volume is the source or destination for the Volume Replication
  /// [remoteVolumeRegion] The remote region for the other end of the Volume Replication.
  /// [remoteVolumeResourceId] The resource ID of the remote volume.
  /// [replicationId] UUID v4 used to identify the replication.
  /// [replicationSchedule] Schedule
  ReplicationResponse({
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
      endpointType: map['endpointType'] == null ? null : map['endpointType'] as String,
      remoteVolumeRegion: map['remoteVolumeRegion'] == null ? null : map['remoteVolumeRegion'] as String,
      remoteVolumeResourceId: map['remoteVolumeResourceId'] as String,
      replicationId: map['replicationId'] as String,
      replicationSchedule: map['replicationSchedule'] == null ? null : map['replicationSchedule'] as String,
    );
  }
}

