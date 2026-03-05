// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration {
  /// The name of the Apache Iceberg database.
  final pulumi.Input<String> databaseName;
  /// The table specific S3 error output prefix. All the errors that occurred while delivering to this table will be prefixed with this value in S3 destination.
  final pulumi.Input<String>? s3ErrorOutputPrefix;
  /// The name of the Apache Iceberg Table.
  final pulumi.Input<String> tableName;
  /// A list of unique keys for a given Apache Iceberg table. Firehose will use these for running Create, Update, or Delete operations on the given Iceberg table.
  final pulumi.Input<List<String>>? uniqueKeys;

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

  factory FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      s3ErrorOutputPrefix: (() { final guardedValue = map['s3ErrorOutputPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      uniqueKeys: (() { final guardedValue = map['uniqueKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

