// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_backing_store_source_data_store_format.dart';

class DomainDevicesDiskMirrorBackingStoreSourceDataStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormat? format;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceDataStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  DomainDevicesDiskMirrorBackingStoreSourceDataStore({
    this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format == null ? null : format!.toMap(),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceDataStore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceDataStore(
      format: map['format'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceDataStoreFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
    );
  }
}

