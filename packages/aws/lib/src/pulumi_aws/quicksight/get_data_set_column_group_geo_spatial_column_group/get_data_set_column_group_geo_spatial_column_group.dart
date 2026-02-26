// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetColumnGroupGeoSpatialColumnGroup {
  final List<String> columns;
  final String countryCode;
  final String name;

  GetDataSetColumnGroupGeoSpatialColumnGroup({
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

  factory GetDataSetColumnGroupGeoSpatialColumnGroup.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetColumnGroupGeoSpatialColumnGroup(
      columns: (map['columns'] as List).cast<String>(),
      countryCode: map['countryCode'] as String,
      name: map['name'] as String,
    );
  }
}
