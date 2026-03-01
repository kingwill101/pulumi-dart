// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize {
  /// Specifies the unit for the maximum size of the metadata cache in the data store format.
  final String? unit;
  /// Sets the value for the maximum size of the metadata cache in the data store format configuration.
  final double value;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize].
  /// [unit] Specifies the unit for the maximum size of the metadata cache in the data store format.
  /// [value] Sets the value for the maximum size of the metadata cache in the data store format configuration.
  DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize({
    this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': ?unit,
      'value': value,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize(
      unit: map['unit'] == null ? null : map['unit'] as String,
      value: map['value'] as double,
    );
  }
}

