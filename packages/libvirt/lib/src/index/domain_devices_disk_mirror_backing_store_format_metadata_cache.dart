// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_backing_store_format_metadata_cache_max_size.dart';

class DomainDevicesDiskMirrorBackingStoreFormatMetadataCache {
  /// Sets the maximum size for the metadata cache in the data store format configuration.
  final DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize? maxSize;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreFormatMetadataCache].
  /// [maxSize] Sets the maximum size for the metadata cache in the data store format configuration.
  DomainDevicesDiskMirrorBackingStoreFormatMetadataCache({
    this.maxSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?maxSize == null ? null : maxSize!.toMap(),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreFormatMetadataCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreFormatMetadataCache(
      maxSize: map['maxSize'] == null ? null : DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize.fromMap((map['maxSize'] as Map).cast<String, dynamic>()),
    );
  }
}

