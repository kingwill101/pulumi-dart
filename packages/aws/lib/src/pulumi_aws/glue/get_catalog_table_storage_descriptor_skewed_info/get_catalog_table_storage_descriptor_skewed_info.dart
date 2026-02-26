// ignore_for_file: unused_element, unnecessary_cast

class GetCatalogTableStorageDescriptorSkewedInfo {
  /// List of names of columns that contain skewed values.
  final List<String> skewedColumnNames;

  /// List of values that appear so frequently as to be considered skewed.
  final Map<String, String> skewedColumnValueLocationMaps;

  /// Map of skewed values to the columns that contain them.
  final List<String> skewedColumnValues;

  GetCatalogTableStorageDescriptorSkewedInfo({
    required this.skewedColumnNames,
    required this.skewedColumnValueLocationMaps,
    required this.skewedColumnValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['skewedColumnNames'] = skewedColumnNames;
    map['skewedColumnValueLocationMaps'] = skewedColumnValueLocationMaps;
    map['skewedColumnValues'] = skewedColumnValues;
    return map;
  }

  factory GetCatalogTableStorageDescriptorSkewedInfo.fromMap(
      Map<String, dynamic> map) {
    return GetCatalogTableStorageDescriptorSkewedInfo(
      skewedColumnNames: (map['skewedColumnNames'] as List).cast<String>(),
      skewedColumnValueLocationMaps:
          (map['skewedColumnValueLocationMaps'] as Map).cast<String, String>(),
      skewedColumnValues: (map['skewedColumnValues'] as List).cast<String>(),
    );
  }
}
