// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_source_data_store_format_metadata_cache_max_size.dart';

class DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCacheMaxSize? maxSize;

  /// Creates a new [DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?maxSize == null ? null : maxSize!.toMap(),
    };
  }

  factory DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCache(
      maxSize: map['maxSize'] == null ? null : DomainDevicesDiskMirrorSourceDataStoreFormatMetadataCacheMaxSize.fromMap((map['maxSize'] as Map).cast<String, dynamic>()),
    );
  }
}

