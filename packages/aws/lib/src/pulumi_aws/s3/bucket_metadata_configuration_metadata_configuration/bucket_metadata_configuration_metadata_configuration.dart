// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_metadata_configuration_metadata_configuration_destination/bucket_metadata_configuration_metadata_configuration_destination.dart';
import '../bucket_metadata_configuration_metadata_configuration_inventory_table_configuration/bucket_metadata_configuration_metadata_configuration_inventory_table_configuration.dart';
import '../bucket_metadata_configuration_metadata_configuration_journal_table_configuration/bucket_metadata_configuration_metadata_configuration_journal_table_configuration.dart';

class BucketMetadataConfigurationMetadataConfiguration {
  /// Destination information for the S3 Metadata configuration.
  final List<BucketMetadataConfigurationMetadataConfigurationDestination>?
      destinations;

  /// Inventory table configuration. See `inventory_table_configuration` Block for details.
  final BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration
      inventoryTableConfiguration;

  /// Journal table configuration. See `journal_table_configuration` Block for details.
  final BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration
      journalTableConfiguration;

  BucketMetadataConfigurationMetadataConfiguration({
    this.destinations,
    required this.inventoryTableConfiguration,
    required this.journalTableConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] = Input.encodeList<
          BucketMetadataConfigurationMetadataConfigurationDestination,
          Map<String, dynamic>>(destinationsValue, (value) => value.toMap());
    }
    map['inventoryTableConfiguration'] = inventoryTableConfiguration.toMap();
    map['journalTableConfiguration'] = journalTableConfiguration.toMap();
    return map;
  }

  factory BucketMetadataConfigurationMetadataConfiguration.fromMap(
      Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfiguration(
      destinations: map['destinations'] == null
          ? null
          : Input.decodeList<
                  BucketMetadataConfigurationMetadataConfigurationDestination>(
              map['destinations'],
              (value) =>
                  BucketMetadataConfigurationMetadataConfigurationDestination
                      .fromMap((value as Map).cast<String, dynamic>())),
      inventoryTableConfiguration:
          BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration
              .fromMap((map['inventoryTableConfiguration'] as Map)
                  .cast<String, dynamic>()),
      journalTableConfiguration:
          BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration
              .fromMap((map['journalTableConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
