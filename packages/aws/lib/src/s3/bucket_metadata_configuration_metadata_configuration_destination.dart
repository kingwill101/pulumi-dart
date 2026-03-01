// ignore_for_file: unused_element, unnecessary_cast

class BucketMetadataConfigurationMetadataConfigurationDestination {
  /// ARN of the table bucket where the metadata configuration is stored.
  final String tableBucketArn;

  /// Type of the table bucket where the metadata configuration is stored.
  final String tableBucketType;

  /// Namespace in the table bucket where the metadata tables for the metadata configuration are stored.
  final String tableNamespace;

  /// Creates a new [BucketMetadataConfigurationMetadataConfigurationDestination].
  /// [tableBucketArn] ARN of the table bucket where the metadata configuration is stored.
  /// [tableBucketType] Type of the table bucket where the metadata configuration is stored.
  /// [tableNamespace] Namespace in the table bucket where the metadata tables for the metadata configuration are stored.
  BucketMetadataConfigurationMetadataConfigurationDestination({
    required this.tableBucketArn,
    required this.tableBucketType,
    required this.tableNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableBucketArn': tableBucketArn,
      'tableBucketType': tableBucketType,
      'tableNamespace': tableNamespace,
    };
  }

  factory BucketMetadataConfigurationMetadataConfigurationDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketMetadataConfigurationMetadataConfigurationDestination(
      tableBucketArn: map['tableBucketArn'] as String,
      tableBucketType: map['tableBucketType'] as String,
      tableNamespace: map['tableNamespace'] as String,
    );
  }
}
