// ignore_for_file: unused_element, unnecessary_cast


class VolumeGroupOracleVolumeDataProtectionReplication {
  /// The endpoint type. Possible values are `dst` and `src`. Defaults to `dst`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String? endpointType;
  /// Location of the primary volume.
  final String remoteVolumeLocation;
  /// Resource ID of the primary volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String remoteVolumeResourceId;
  /// Replication frequency. Possible values are `10minutes`, `daily` and `hourly`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final String replicationFrequency;

  /// Creates a new [VolumeGroupOracleVolumeDataProtectionReplication].
  /// [endpointType] The endpoint type. Possible values are `dst` and `src`. Defaults to `dst`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [remoteVolumeLocation] Location of the primary volume.
  /// [remoteVolumeResourceId] Resource ID of the primary volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [replicationFrequency] Replication frequency. Possible values are `10minutes`, `daily` and `hourly`. Changing this forces a new Application Volume Group to be created and data will be lost.
  VolumeGroupOracleVolumeDataProtectionReplication({
    this.endpointType,
    required this.remoteVolumeLocation,
    required this.remoteVolumeResourceId,
    required this.replicationFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': ?endpointType,
      'remoteVolumeLocation': remoteVolumeLocation,
      'remoteVolumeResourceId': remoteVolumeResourceId,
      'replicationFrequency': replicationFrequency,
    };
  }

  factory VolumeGroupOracleVolumeDataProtectionReplication.fromMap(Map<String, dynamic> map) {
    return VolumeGroupOracleVolumeDataProtectionReplication(
      endpointType: map['endpointType'] == null ? null : map['endpointType'] as String,
      remoteVolumeLocation: map['remoteVolumeLocation'] as String,
      remoteVolumeResourceId: map['remoteVolumeResourceId'] as String,
      replicationFrequency: map['replicationFrequency'] as String,
    );
  }
}

