// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_backing_store_source_data_store_format.dart';

class DomainDevicesDiskBackingStoreSourceDataStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final DomainDevicesDiskBackingStoreSourceDataStoreFormat? format;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceDataStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  DomainDevicesDiskBackingStoreSourceDataStore({
    this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format == null ? null : format!.toMap(),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceDataStore.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceDataStore(
      format: map['format'] == null ? null : DomainDevicesDiskBackingStoreSourceDataStoreFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
    );
  }
}

