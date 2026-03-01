// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_format_metadata_cache.dart';

class DomainDevicesDiskMirrorFormat {
  /// Configures the metadata cache settings for the data store format within the backing store source.
  final DomainDevicesDiskMirrorFormatMetadataCache? metadataCache;
  /// Specifies the type of the data store format being used in the backing store source.
  final String type;

  /// Creates a new [DomainDevicesDiskMirrorFormat].
  /// [metadataCache] Configures the metadata cache settings for the data store format within the backing store source.
  /// [type] Specifies the type of the data store format being used in the backing store source.
  DomainDevicesDiskMirrorFormat({
    this.metadataCache,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataCache': ?metadataCache == null ? null : metadataCache!.toMap(),
      'type': type,
    };
  }

  factory DomainDevicesDiskMirrorFormat.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorFormat(
      metadataCache: map['metadataCache'] == null ? null : DomainDevicesDiskMirrorFormatMetadataCache.fromMap((map['metadataCache'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

