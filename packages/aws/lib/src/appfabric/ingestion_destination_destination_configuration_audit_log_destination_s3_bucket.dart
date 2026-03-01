// ignore_for_file: unused_element, unnecessary_cast

class IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket {
  final String bucketName;

  /// The object key to use.
  final String? prefix;

  /// Creates a new [IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket].
  /// [bucketName] Required.
  /// [prefix] The object key to use.
  IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket({
    required this.bucketName,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucketName': bucketName, 'prefix': ?prefix};
  }

  factory IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket.fromMap(
    Map<String, dynamic> map,
  ) {
    return IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket(
      bucketName: map['bucketName'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
