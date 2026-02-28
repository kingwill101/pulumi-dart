// ignore_for_file: unused_element, unnecessary_cast

/// SQL Server specific audit configuration.
class SqlServerAuditConfigResponseSqladminV1beta4 {
  /// The name of the destination bucket (e.g., gs://mybucket).
  final String bucket;

  /// This is always sql#sqlServerAuditConfig
  final String kind;

  /// How long to keep generated audit files.
  final String retentionInterval;

  /// How often to upload generated audit files.
  final String uploadInterval;

  /// Creates a new [SqlServerAuditConfigResponseSqladminV1beta4].
  /// [bucket] The name of the destination bucket (e.g., gs://mybucket).
  /// [kind] This is always sql#sqlServerAuditConfig
  /// [retentionInterval] How long to keep generated audit files.
  /// [uploadInterval] How often to upload generated audit files.
  SqlServerAuditConfigResponseSqladminV1beta4({
    required this.bucket,
    required this.kind,
    required this.retentionInterval,
    required this.uploadInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['kind'] = kind;
    map['retentionInterval'] = retentionInterval;
    map['uploadInterval'] = uploadInterval;
    return map;
  }

  factory SqlServerAuditConfigResponseSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return SqlServerAuditConfigResponseSqladminV1beta4(
      bucket: map['bucket'] as String,
      kind: map['kind'] as String,
      retentionInterval: map['retentionInterval'] as String,
      uploadInterval: map['uploadInterval'] as String,
    );
  }
}
