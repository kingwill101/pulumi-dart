// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration {
  /// The name of the Apache Iceberg database.
  final String databaseName;

  /// The table specific S3 error output prefix. All the errors that occurred while delivering to this table will be prefixed with this value in S3 destination.
  final String? s3ErrorOutputPrefix;

  /// The name of the Apache Iceberg Table.
  final String tableName;

  /// A list of unique keys for a given Apache Iceberg table. Firehose will use these for running Create, Update, or Delete operations on the given Iceberg table.
  final List<String>? uniqueKeys;

  /// Creates a new [FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration].
  /// [databaseName] The name of the Apache Iceberg database.
  /// [s3ErrorOutputPrefix] The table specific S3 error output prefix. All the errors that occurred while delivering to this table will be prefixed with this value in S3 destination.
  /// [tableName] The name of the Apache Iceberg Table.
  /// [uniqueKeys] A list of unique keys for a given Apache Iceberg table. Firehose will use these for running Create, Update, or Delete operations on the given Iceberg table.
  FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration({
    required this.databaseName,
    this.s3ErrorOutputPrefix,
    required this.tableName,
    this.uniqueKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      's3ErrorOutputPrefix': ?s3ErrorOutputPrefix,
      'tableName': tableName,
      'uniqueKeys': ?uniqueKeys,
    };
  }

  factory FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration(
      databaseName: map['databaseName'] as String,
      s3ErrorOutputPrefix: map['s3ErrorOutputPrefix'] == null
          ? null
          : map['s3ErrorOutputPrefix'] as String,
      tableName: map['tableName'] as String,
      uniqueKeys: map['uniqueKeys'] == null
          ? null
          : (map['uniqueKeys'] as List).cast<String>(),
    );
  }
}
