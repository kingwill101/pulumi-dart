// ignore_for_file: unused_element, unnecessary_cast

/// SQL Server specific audit configuration.
class SqlServerAuditConfig {
  /// The name of the destination bucket (e.g., gs://mybucket).
  final String? bucket;

  /// This is always sql#sqlServerAuditConfig
  final String? kind;

  /// How long to keep generated audit files.
  final String? retentionInterval;

  /// How often to upload generated audit files.
  final String? uploadInterval;

  /// Creates a new [SqlServerAuditConfig].
  /// [bucket] The name of the destination bucket (e.g., gs://mybucket).
  /// [kind] This is always sql#sqlServerAuditConfig
  /// [retentionInterval] How long to keep generated audit files.
  /// [uploadInterval] How often to upload generated audit files.
  SqlServerAuditConfig({
    this.bucket,
    this.kind,
    this.retentionInterval,
    this.uploadInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'kind': ?kind,
      'retentionInterval': ?retentionInterval,
      'uploadInterval': ?uploadInterval,
    };
  }

  factory SqlServerAuditConfig.fromMap(Map<String, dynamic> map) {
    return SqlServerAuditConfig(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      retentionInterval: map['retentionInterval'] == null
          ? null
          : map['retentionInterval'] as String,
      uploadInterval: map['uploadInterval'] == null
          ? null
          : map['uploadInterval'] as String,
    );
  }
}
