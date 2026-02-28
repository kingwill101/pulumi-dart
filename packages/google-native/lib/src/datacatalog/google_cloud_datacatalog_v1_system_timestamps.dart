// ignore_for_file: unused_element, unnecessary_cast

/// Timestamps associated with this resource in a particular system.
class GoogleCloudDatacatalogV1SystemTimestamps {
  /// Creation timestamp of the resource within the given system.
  final String? createTime;

  /// Timestamp of the last modification of the resource or its metadata within a given system. Note: Depending on the source system, not every modification updates this timestamp. For example, BigQuery timestamps every metadata modification but not data or permission changes.
  final String? updateTime;

  /// Creates a new [GoogleCloudDatacatalogV1SystemTimestamps].
  /// [createTime] Creation timestamp of the resource within the given system.
  /// [updateTime] Timestamp of the last modification of the resource or its metadata within a given system. Note: Depending on the source system, not every modification updates this timestamp. For example, BigQuery timestamps every metadata modification but not data or permission changes.
  GoogleCloudDatacatalogV1SystemTimestamps({
    this.createTime,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1SystemTimestamps.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1SystemTimestamps(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
