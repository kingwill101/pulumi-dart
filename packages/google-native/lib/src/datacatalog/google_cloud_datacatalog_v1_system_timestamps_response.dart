// ignore_for_file: unused_element, unnecessary_cast

/// Timestamps associated with this resource in a particular system.
class GoogleCloudDatacatalogV1SystemTimestampsResponse {
  /// Creation timestamp of the resource within the given system.
  final String createTime;

  /// Expiration timestamp of the resource within the given system. Currently only applicable to BigQuery resources.
  final String expireTime;

  /// Timestamp of the last modification of the resource or its metadata within a given system. Note: Depending on the source system, not every modification updates this timestamp. For example, BigQuery timestamps every metadata modification but not data or permission changes.
  final String updateTime;

  /// Creates a new [GoogleCloudDatacatalogV1SystemTimestampsResponse].
  /// [createTime] Creation timestamp of the resource within the given system.
  /// [expireTime] Expiration timestamp of the resource within the given system. Currently only applicable to BigQuery resources.
  /// [updateTime] Timestamp of the last modification of the resource or its metadata within a given system. Note: Depending on the source system, not every modification updates this timestamp. For example, BigQuery timestamps every metadata modification but not data or permission changes.
  GoogleCloudDatacatalogV1SystemTimestampsResponse({
    required this.createTime,
    required this.expireTime,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'expireTime': expireTime,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudDatacatalogV1SystemTimestampsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1SystemTimestampsResponse(
      createTime: map['createTime'] as String,
      expireTime: map['expireTime'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
