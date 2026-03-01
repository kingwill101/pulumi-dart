// ignore_for_file: unused_element, unnecessary_cast

import 'domain_os_nv_ram_source_data_store_format.dart';

class DomainOsNvRamSourceDataStore {
  /// Defines the format of the data store used in the backing store source configuration.
  final DomainOsNvRamSourceDataStoreFormat? format;

  /// Creates a new [DomainOsNvRamSourceDataStore].
  /// [format] Defines the format of the data store used in the backing store source configuration.
  DomainOsNvRamSourceDataStore({
    this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format == null ? null : format!.toMap(),
    };
  }

  factory DomainOsNvRamSourceDataStore.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceDataStore(
      format: map['format'] == null ? null : DomainOsNvRamSourceDataStoreFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
    );
  }
}

