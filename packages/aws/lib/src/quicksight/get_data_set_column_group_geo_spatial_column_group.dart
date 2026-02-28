// ignore_for_file: unused_element, unnecessary_cast


class GetDataSetColumnGroupGeoSpatialColumnGroup {
  final List<String> columns;
  final String countryCode;
  final String name;

  /// Creates a new [GetDataSetColumnGroupGeoSpatialColumnGroup].
  /// [columns] Required.
  /// [countryCode] Required.
  /// [name] Required.
  GetDataSetColumnGroupGeoSpatialColumnGroup({
    required this.columns,
    required this.countryCode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': columns,
      'countryCode': countryCode,
      'name': name,
    };
  }

  factory GetDataSetColumnGroupGeoSpatialColumnGroup.fromMap(Map<String, dynamic> map) {
    return GetDataSetColumnGroupGeoSpatialColumnGroup(
      columns: (map['columns'] as List).cast<String>(),
      countryCode: map['countryCode'] as String,
      name: map['name'] as String,
    );
  }
}

