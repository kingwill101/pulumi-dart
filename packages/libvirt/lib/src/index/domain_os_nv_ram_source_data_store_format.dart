// ignore_for_file: unused_element, unnecessary_cast

import 'domain_os_nv_ram_source_data_store_format_metadata_cache.dart';

class DomainOsNvRamSourceDataStoreFormat {
  /// Configures the metadata cache settings for the data store format within the backing store source.
  final DomainOsNvRamSourceDataStoreFormatMetadataCache? metadataCache;
  /// Specifies the type of the data store format being used in the backing store source.
  final String type;

  /// Creates a new [DomainOsNvRamSourceDataStoreFormat].
  /// [metadataCache] Configures the metadata cache settings for the data store format within the backing store source.
  /// [type] Specifies the type of the data store format being used in the backing store source.
  DomainOsNvRamSourceDataStoreFormat({
    this.metadataCache,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataCache': ?metadataCache == null ? null : metadataCache!.toMap(),
      'type': type,
    };
  }

  factory DomainOsNvRamSourceDataStoreFormat.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceDataStoreFormat(
      metadataCache: map['metadataCache'] == null ? null : DomainOsNvRamSourceDataStoreFormatMetadataCache.fromMap((map['metadataCache'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

