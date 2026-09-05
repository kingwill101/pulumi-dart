// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_metadata_configuration_metadata_configuration_destination.dart';
import 'bucket_metadata_configuration_metadata_configuration_inventory_table_configuration.dart';
import 'bucket_metadata_configuration_metadata_configuration_journal_table_configuration.dart';

class BucketMetadataConfigurationMetadataConfiguration {
  /// Destination information for the S3 Metadata configuration. See `destination` Block for details.
  final pulumi.Input<List<BucketMetadataConfigurationMetadataConfigurationDestination>?>? destinations;
  /// Inventory table configuration. See `inventoryTableConfiguration` Block for details.
  final pulumi.Input<BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration> inventoryTableConfiguration;
  /// Journal table configuration. See `journalTableConfiguration` Block for details.
  final pulumi.Input<BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration> journalTableConfiguration;

  /// Creates a new [BucketMetadataConfigurationMetadataConfiguration].
  /// [destinations] Destination information for the S3 Metadata configuration. See `destination` Block for details.
  /// [inventoryTableConfiguration] Inventory table configuration. See `inventoryTableConfiguration` Block for details.
  /// [journalTableConfiguration] Journal table configuration. See `journalTableConfiguration` Block for details.
  const BucketMetadataConfigurationMetadataConfiguration({
    this.destinations,
    required this.inventoryTableConfiguration,
    required this.journalTableConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<BucketMetadataConfigurationMetadataConfigurationDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<BucketMetadataConfigurationMetadataConfigurationDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inventoryTableConfiguration': pulumi.Input.mapInputValue<BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration, Map<String, dynamic>>(inventoryTableConfiguration, (value) => value.toMap()),
      'journalTableConfiguration': pulumi.Input.mapInputValue<BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration, Map<String, dynamic>>(journalTableConfiguration, (value) => value.toMap()),
    };
  }

  factory BucketMetadataConfigurationMetadataConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketMetadataConfigurationMetadataConfiguration(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketMetadataConfigurationMetadataConfigurationDestination>(guardedValue, (value) => BucketMetadataConfigurationMetadataConfigurationDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inventoryTableConfiguration: pulumi.Input.fromValue(BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration.fromMap((map['inventoryTableConfiguration']! as Map).cast<String, dynamic>())),
      journalTableConfiguration: pulumi.Input.fromValue(BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration.fromMap((map['journalTableConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
