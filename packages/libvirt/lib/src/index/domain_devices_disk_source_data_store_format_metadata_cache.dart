// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_source_data_store_format_metadata_cache_max_size.dart';

class DomainDevicesDiskSourceDataStoreFormatMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final DomainDevicesDiskSourceDataStoreFormatMetadataCacheMaxSize? maxSize;

  /// Creates a new [DomainDevicesDiskSourceDataStoreFormatMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  DomainDevicesDiskSourceDataStoreFormatMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?maxSize == null ? null : maxSize!.toMap(),
    };
  }

  factory DomainDevicesDiskSourceDataStoreFormatMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceDataStoreFormatMetadataCache(
      maxSize: map['maxSize'] == null ? null : DomainDevicesDiskSourceDataStoreFormatMetadataCacheMaxSize.fromMap((map['maxSize'] as Map).cast<String, dynamic>()),
    );
  }
}

