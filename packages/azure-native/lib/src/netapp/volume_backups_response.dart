// ignore_for_file: unused_element, unnecessary_cast


/// Volume details using the backup policy
class VolumeBackupsResponse {
  /// Total count of backups for volume
  final int? backupsCount;
  /// Policy enabled
  final bool? policyEnabled;
  /// Volume name
  final String? volumeName;
  /// ResourceId used to identify the Volume
  final String? volumeResourceId;

  /// Creates a new [VolumeBackupsResponse].
  /// [backupsCount] Total count of backups for volume
  /// [policyEnabled] Policy enabled
  /// [volumeName] Volume name
  /// [volumeResourceId] ResourceId used to identify the Volume
  VolumeBackupsResponse({
    this.backupsCount,
    this.policyEnabled,
    this.volumeName,
    this.volumeResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupsCount': ?backupsCount,
      'policyEnabled': ?policyEnabled,
      'volumeName': ?volumeName,
      'volumeResourceId': ?volumeResourceId,
    };
  }

  factory VolumeBackupsResponse.fromMap(Map<String, dynamic> map) {
    return VolumeBackupsResponse(
      backupsCount: map['backupsCount'] == null ? null : map['backupsCount'] as int,
      policyEnabled: map['policyEnabled'] == null ? null : map['policyEnabled'] as bool,
      volumeName: map['volumeName'] == null ? null : map['volumeName'] as String,
      volumeResourceId: map['volumeResourceId'] == null ? null : map['volumeResourceId'] as String,
    );
  }
}

