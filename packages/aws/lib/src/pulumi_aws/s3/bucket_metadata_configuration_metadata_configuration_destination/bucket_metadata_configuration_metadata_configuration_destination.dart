// ignore_for_file: unused_element, unnecessary_cast

class BucketMetadataConfigurationMetadataConfigurationDestination {
  /// ARN of the table bucket where the metadata configuration is stored.
  final String tableBucketArn;

  /// Type of the table bucket where the metadata configuration is stored.
  final String tableBucketType;

  /// Namespace in the table bucket where the metadata tables for the metadata configuration are stored.
  final String tableNamespace;

  BucketMetadataConfigurationMetadataConfigurationDestination({
    required this.tableBucketArn,
    required this.tableBucketType,
    required this.tableNamespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tableBucketArn'] = tableBucketArn;
    map['tableBucketType'] = tableBucketType;
    map['tableNamespace'] = tableNamespace;
    return map;
  }

  factory BucketMetadataConfigurationMetadataConfigurationDestination.fromMap(
      Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfigurationDestination(
      tableBucketArn: map['tableBucketArn'] as String,
      tableBucketType: map['tableBucketType'] as String,
      tableNamespace: map['tableNamespace'] as String,
    );
  }
}
