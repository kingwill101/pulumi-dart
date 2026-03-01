// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_backing_store_source_data_store_format_metadata_cache_max_size.dart';

class DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormatMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormatMetadataCacheMaxSize? maxSize;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormatMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormatMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?maxSize == null ? null : maxSize!.toMap(),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormatMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormatMetadataCache(
      maxSize: map['maxSize'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormatMetadataCacheMaxSize.fromMap((map['maxSize'] as Map).cast<String, dynamic>()),
    );
  }
}

