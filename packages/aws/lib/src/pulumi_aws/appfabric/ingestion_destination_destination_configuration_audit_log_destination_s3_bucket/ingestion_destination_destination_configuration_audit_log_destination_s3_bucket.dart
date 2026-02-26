// ignore_for_file: unused_element, unnecessary_cast

class IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket {
  final String bucketName;

  /// The object key to use.
  final String? prefix;

  IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket({
    required this.bucketName,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket.fromMap(
      Map<String, dynamic> map) {
    return IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket(
      bucketName: map['bucketName'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
