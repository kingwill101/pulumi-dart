// ignore_for_file: unused_element, unnecessary_cast

/// SQL Server specific audit configuration.
class SqlServerAuditConfigSqladminV1beta4 {
  /// The name of the destination bucket (e.g., gs://mybucket).
  final String? bucket;

  /// This is always sql#sqlServerAuditConfig
  final String? kind;

  /// How long to keep generated audit files.
  final String? retentionInterval;

  /// How often to upload generated audit files.
  final String? uploadInterval;

  /// Creates a new [SqlServerAuditConfigSqladminV1beta4].
  /// [bucket] The name of the destination bucket (e.g., gs://mybucket).
  /// [kind] This is always sql#sqlServerAuditConfig
  /// [retentionInterval] How long to keep generated audit files.
  /// [uploadInterval] How often to upload generated audit files.
  SqlServerAuditConfigSqladminV1beta4({
    this.bucket,
    this.kind,
    this.retentionInterval,
    this.uploadInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
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

  factory SqlServerAuditConfigSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return SqlServerAuditConfigSqladminV1beta4(
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
