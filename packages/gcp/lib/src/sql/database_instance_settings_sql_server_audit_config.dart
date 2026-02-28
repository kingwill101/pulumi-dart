// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsSqlServerAuditConfig {
  /// The name of the destination bucket (e.g., gs://mybucket).
  final String? bucket;

  /// How long to keep generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? retentionInterval;

  /// How often to upload generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? uploadInterval;

  /// Creates a new [DatabaseInstanceSettingsSqlServerAuditConfig].
  /// [bucket] The name of the destination bucket (e.g., gs://mybucket).
  /// [retentionInterval] How long to keep generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  /// [uploadInterval] How often to upload generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  DatabaseInstanceSettingsSqlServerAuditConfig({
    this.bucket,
    this.retentionInterval,
    this.uploadInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final retentionIntervalValue = retentionInterval;
    if (retentionIntervalValue != null) {
      map['retentionInterval'] = retentionIntervalValue;
    }
    final uploadIntervalValue = uploadInterval;
    if (uploadIntervalValue != null) {
      map['uploadInterval'] = uploadIntervalValue;
    }
    return map;
  }

  factory DatabaseInstanceSettingsSqlServerAuditConfig.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsSqlServerAuditConfig(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      retentionInterval: map['retentionInterval'] == null
          ? null
          : map['retentionInterval'] as String,
      uploadInterval: map['uploadInterval'] == null
          ? null
          : map['uploadInterval'] as String,
    );
  }
}
