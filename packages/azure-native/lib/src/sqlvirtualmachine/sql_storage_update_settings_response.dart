// ignore_for_file: unused_element, unnecessary_cast


/// Set disk storage settings for SQL Server.
class SqlStorageUpdateSettingsResponse {
  /// Disk configuration to apply to SQL Server.
  final String? diskConfigurationType;
  /// Virtual machine disk count.
  final int? diskCount;
  /// Device id of the first disk to be updated.
  final int? startingDeviceId;

  /// Creates a new [SqlStorageUpdateSettingsResponse].
  /// [diskConfigurationType] Disk configuration to apply to SQL Server.
  /// [diskCount] Virtual machine disk count.
  /// [startingDeviceId] Device id of the first disk to be updated.
  SqlStorageUpdateSettingsResponse({
    this.diskConfigurationType,
    this.diskCount,
    this.startingDeviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfigurationType': ?diskConfigurationType,
      'diskCount': ?diskCount,
      'startingDeviceId': ?startingDeviceId,
    };
  }

  factory SqlStorageUpdateSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlStorageUpdateSettingsResponse(
      diskConfigurationType: map['diskConfigurationType'] == null ? null : map['diskConfigurationType'] as String,
      diskCount: map['diskCount'] == null ? null : map['diskCount'] as int,
      startingDeviceId: map['startingDeviceId'] == null ? null : map['startingDeviceId'] as int,
    );
  }
}

