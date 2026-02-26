// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingSqlServerAuditConfig {
  /// The name of the destination bucket (e.g., gs://mybucket).
  final String bucket;

  /// How long to keep generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"..
  final String retentionInterval;

  /// How often to upload generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String uploadInterval;

  GetDatabaseInstancesInstanceSettingSqlServerAuditConfig({
    required this.bucket,
    required this.retentionInterval,
    required this.uploadInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['retentionInterval'] = retentionInterval;
    map['uploadInterval'] = uploadInterval;
    return map;
  }

  factory GetDatabaseInstancesInstanceSettingSqlServerAuditConfig.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingSqlServerAuditConfig(
      bucket: map['bucket'] as String,
      retentionInterval: map['retentionInterval'] as String,
      uploadInterval: map['uploadInterval'] as String,
    );
  }
}
