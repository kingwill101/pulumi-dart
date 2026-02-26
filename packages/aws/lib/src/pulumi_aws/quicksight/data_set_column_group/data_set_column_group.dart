// ignore_for_file: unused_element, unnecessary_cast

import '../data_set_column_group_geo_spatial_column_group/data_set_column_group_geo_spatial_column_group.dart';

class DataSetColumnGroup {
  /// Geospatial column group that denotes a hierarchy. See geo_spatial_column_group.
  final DataSetColumnGroupGeoSpatialColumnGroup? geoSpatialColumnGroup;

  DataSetColumnGroup({
    this.geoSpatialColumnGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final geoSpatialColumnGroupValue = geoSpatialColumnGroup;
    if (geoSpatialColumnGroupValue != null) {
      map['geoSpatialColumnGroup'] = geoSpatialColumnGroupValue.toMap();
    }
    return map;
  }

  factory DataSetColumnGroup.fromMap(Map<String, dynamic> map) {
    return DataSetColumnGroup(
      geoSpatialColumnGroup: map['geoSpatialColumnGroup'] == null
          ? null
          : DataSetColumnGroupGeoSpatialColumnGroup.fromMap(
              (map['geoSpatialColumnGroup'] as Map).cast<String, dynamic>()),
    );
  }
}
