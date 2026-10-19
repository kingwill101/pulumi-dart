// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_iceberg_destination_catalog.dart';
import 'channel_iceberg_destination_dead_letter_queue_s3.dart';
import 'channel_iceberg_destination_destination_table.dart';
import 'channel_iceberg_destination_schema_evolution.dart';
import 'channel_iceberg_destination_table_creation.dart';

class ChannelIcebergDestination {
  /// Whether the destination is append-only. Must be `true`; updates and deletes are not supported.
  final pulumi.Input<bool> appendOnly;
  /// AWS Glue Data Catalog and S3 Tables warehouse used by the destination. See `catalog` Block below.
  final pulumi.Input<ChannelIcebergDestinationCatalog?>? catalog;
  /// Compression codec for Iceberg table data files. Defaults to `ZSTD`.
  final pulumi.Input<String?>? compressionType;
  /// Maximum time, in seconds, that records buffer in MSK before being flushed to the destination. Valid values are between `300` and `900`. Defaults to `600`. Can be updated in place without recreating the channel.
  final pulumi.Input<int?>? dataFreshnessInSeconds;
  /// Amazon S3 bucket and prefix where MSK writes records that fail to deliver. See `deadLetterQueueS3` Block below.
  final pulumi.Input<ChannelIcebergDestinationDeadLetterQueueS3> deadLetterQueueS3;
  /// Destination Iceberg table. See `destinationTable` Block below.
  final pulumi.Input<ChannelIcebergDestinationDestinationTable> destinationTable;
  /// Configuration controlling whether the destination table's schema is evolved to match incoming records. See `schemaEvolution` Block below.
  final pulumi.Input<ChannelIcebergDestinationSchemaEvolution> schemaEvolution;
  /// ARN of the IAM role that MSK assumes to access the destination table, the AWS Glue Data Catalog, and the dead-letter Amazon S3 bucket.
  final pulumi.Input<String> serviceExecutionRoleArn;
  /// Configuration controlling whether MSK creates the destination table if it does not already exist. See `tableCreation` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ChannelIcebergDestinationTableCreation> tableCreation;

  /// Creates a new [ChannelIcebergDestination].
  /// [appendOnly] Whether the destination is append-only. Must be `true`; updates and deletes are not supported.
  /// [catalog] AWS Glue Data Catalog and S3 Tables warehouse used by the destination. See `catalog` Block below.
  /// [compressionType] Compression codec for Iceberg table data files. Defaults to `ZSTD`.
  /// [dataFreshnessInSeconds] Maximum time, in seconds, that records buffer in MSK before being flushed to the destination. Valid values are between `300` and `900`. Defaults to `600`. Can be updated in place without recreating the channel.
  /// [deadLetterQueueS3] Amazon S3 bucket and prefix where MSK writes records that fail to deliver. See `deadLetterQueueS3` Block below.
  /// [destinationTable] Destination Iceberg table. See `destinationTable` Block below.
  /// [schemaEvolution] Configuration controlling whether the destination table's schema is evolved to match incoming records. See `schemaEvolution` Block below.
  /// [serviceExecutionRoleArn] ARN of the IAM role that MSK assumes to access the destination table, the AWS Glue Data Catalog, and the dead-letter Amazon S3 bucket.
  /// [tableCreation] Configuration controlling whether MSK creates the destination table if it does not already exist. See `tableCreation` Block below.
  const ChannelIcebergDestination({
    required this.appendOnly,
    this.catalog,
    this.compressionType,
    this.dataFreshnessInSeconds,
    required this.deadLetterQueueS3,
    required this.destinationTable,
    required this.schemaEvolution,
    required this.serviceExecutionRoleArn,
    required this.tableCreation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendOnly': appendOnly,
      'catalog': ?pulumi.Input.mapOptionalInputValue<ChannelIcebergDestinationCatalog, Map<String, dynamic>>(catalog, (value) => value.toMap()),
      'compressionType': ?compressionType,
      'dataFreshnessInSeconds': ?dataFreshnessInSeconds,
      'deadLetterQueueS3': pulumi.Input.mapInputValue<ChannelIcebergDestinationDeadLetterQueueS3, Map<String, dynamic>>(deadLetterQueueS3, (value) => value.toMap()),
      'destinationTable': pulumi.Input.mapInputValue<ChannelIcebergDestinationDestinationTable, Map<String, dynamic>>(destinationTable, (value) => value.toMap()),
      'schemaEvolution': pulumi.Input.mapInputValue<ChannelIcebergDestinationSchemaEvolution, Map<String, dynamic>>(schemaEvolution, (value) => value.toMap()),
      'serviceExecutionRoleArn': serviceExecutionRoleArn,
      'tableCreation': pulumi.Input.mapInputValue<ChannelIcebergDestinationTableCreation, Map<String, dynamic>>(tableCreation, (value) => value.toMap()),
    };
  }

  factory ChannelIcebergDestination.fromMap(Map<String, dynamic> map) {
    return ChannelIcebergDestination(
      appendOnly: pulumi.Input.fromValue(map['appendOnly'] as bool),
      catalog: (() { final guardedValue = map['catalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelIcebergDestinationCatalog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compressionType: (() { final guardedValue = map['compressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFreshnessInSeconds: (() { final guardedValue = map['dataFreshnessInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      deadLetterQueueS3: pulumi.Input.fromValue(ChannelIcebergDestinationDeadLetterQueueS3.fromMap((map['deadLetterQueueS3']! as Map).cast<String, dynamic>())),
      destinationTable: pulumi.Input.fromValue(ChannelIcebergDestinationDestinationTable.fromMap((map['destinationTable']! as Map).cast<String, dynamic>())),
      schemaEvolution: pulumi.Input.fromValue(ChannelIcebergDestinationSchemaEvolution.fromMap((map['schemaEvolution']! as Map).cast<String, dynamic>())),
      serviceExecutionRoleArn: pulumi.Input.fromValue(map['serviceExecutionRoleArn'] as String),
      tableCreation: pulumi.Input.fromValue(ChannelIcebergDestinationTableCreation.fromMap((map['tableCreation']! as Map).cast<String, dynamic>())),
    );
  }
}
