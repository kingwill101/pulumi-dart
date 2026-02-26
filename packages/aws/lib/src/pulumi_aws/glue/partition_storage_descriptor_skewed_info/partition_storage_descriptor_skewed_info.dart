// ignore_for_file: unused_element, unnecessary_cast

class PartitionStorageDescriptorSkewedInfo {
  /// A list of names of columns that contain skewed values.
  final List<String>? skewedColumnNames;

  /// A list of values that appear so frequently as to be considered skewed.
  final Map<String, String>? skewedColumnValueLocationMaps;

  /// A map of skewed values to the columns that contain them.
  final List<String>? skewedColumnValues;

  PartitionStorageDescriptorSkewedInfo({
    this.skewedColumnNames,
    this.skewedColumnValueLocationMaps,
    this.skewedColumnValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final skewedColumnNamesValue = skewedColumnNames;
    if (skewedColumnNamesValue != null) {
      map['skewedColumnNames'] = skewedColumnNamesValue;
    }
    final skewedColumnValueLocationMapsValue = skewedColumnValueLocationMaps;
    if (skewedColumnValueLocationMapsValue != null) {
      map['skewedColumnValueLocationMaps'] = skewedColumnValueLocationMapsValue;
    }
    final skewedColumnValuesValue = skewedColumnValues;
    if (skewedColumnValuesValue != null) {
      map['skewedColumnValues'] = skewedColumnValuesValue;
    }
    return map;
  }

  factory PartitionStorageDescriptorSkewedInfo.fromMap(
      Map<String, dynamic> map) {
    return PartitionStorageDescriptorSkewedInfo(
      skewedColumnNames: map['skewedColumnNames'] == null
          ? null
          : (map['skewedColumnNames'] as List).cast<String>(),
      skewedColumnValueLocationMaps:
          map['skewedColumnValueLocationMaps'] == null
              ? null
              : (map['skewedColumnValueLocationMaps'] as Map)
                  .cast<String, String>(),
      skewedColumnValues: map['skewedColumnValues'] == null
          ? null
          : (map['skewedColumnValues'] as List).cast<String>(),
    );
  }
}
