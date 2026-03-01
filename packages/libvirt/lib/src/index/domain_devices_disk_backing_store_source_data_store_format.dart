// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_backing_store_source_data_store_format_metadata_cache.dart';

class DomainDevicesDiskBackingStoreSourceDataStoreFormat {
  /// Configures the metadata cache settings for the data store format within the backing store source.
  final DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCache? metadataCache;
  /// Specifies the type of the data store format being used in the backing store source.
  final String type;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceDataStoreFormat].
  /// [metadataCache] Configures the metadata cache settings for the data store format within the backing store source.
  /// [type] Specifies the type of the data store format being used in the backing store source.
  DomainDevicesDiskBackingStoreSourceDataStoreFormat({
    this.metadataCache,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataCache': ?metadataCache == null ? null : metadataCache!.toMap(),
      'type': type,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceDataStoreFormat.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceDataStoreFormat(
      metadataCache: map['metadataCache'] == null ? null : DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCache.fromMap((map['metadataCache'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

