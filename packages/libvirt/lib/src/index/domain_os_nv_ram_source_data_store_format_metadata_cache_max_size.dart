// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceDataStoreFormatMetadataCacheMaxSize {
  /// Specifies the unit for the maximum size of the metadata cache in the data store format.
  final String? unit;
  /// Sets the value for the maximum size of the metadata cache in the data store format configuration.
  final double value;

  /// Creates a new [DomainOsNvRamSourceDataStoreFormatMetadataCacheMaxSize].
  /// [unit] Specifies the unit for the maximum size of the metadata cache in the data store format.
  /// [value] Sets the value for the maximum size of the metadata cache in the data store format configuration.
  DomainOsNvRamSourceDataStoreFormatMetadataCacheMaxSize({
    this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': ?unit,
      'value': value,
    };
  }

  factory DomainOsNvRamSourceDataStoreFormatMetadataCacheMaxSize.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceDataStoreFormatMetadataCacheMaxSize(
      unit: map['unit'] == null ? null : map['unit'] as String,
      value: map['value'] as double,
    );
  }
}

