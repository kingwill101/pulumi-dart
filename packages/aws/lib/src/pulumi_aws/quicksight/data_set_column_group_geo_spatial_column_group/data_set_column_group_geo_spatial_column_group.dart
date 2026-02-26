// ignore_for_file: unused_element, unnecessary_cast

class DataSetColumnGroupGeoSpatialColumnGroup {
  /// Columns in this hierarchy.
  final List<String> columns;

  /// Country code. Valid values are `US`.
  final String countryCode;

  /// A display name for the hierarchy.
  final String name;

  DataSetColumnGroupGeoSpatialColumnGroup({
    required this.columns,
    required this.countryCode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] = columns;
    map['countryCode'] = countryCode;
    map['name'] = name;
    return map;
  }

  factory DataSetColumnGroupGeoSpatialColumnGroup.fromMap(
      Map<String, dynamic> map) {
    return DataSetColumnGroupGeoSpatialColumnGroup(
      columns: (map['columns'] as List).cast<String>(),
      countryCode: map['countryCode'] as String,
      name: map['name'] as String,
    );
  }
}
