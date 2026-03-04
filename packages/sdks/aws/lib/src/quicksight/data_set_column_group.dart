// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_column_group_geo_spatial_column_group.dart';

class DataSetColumnGroup {
  /// Geospatial column group that denotes a hierarchy. See geo_spatial_column_group.
  final pulumi.Input<DataSetColumnGroupGeoSpatialColumnGroup>?
  geoSpatialColumnGroup;

  /// Creates a new [DataSetColumnGroup].
  /// [geoSpatialColumnGroup] Geospatial column group that denotes a hierarchy. See geo_spatial_column_group.
  DataSetColumnGroup({this.geoSpatialColumnGroup});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoSpatialColumnGroup':
          ?pulumi.Input.mapOptionalInputValue<
            DataSetColumnGroupGeoSpatialColumnGroup,
            Map<String, dynamic>
          >(geoSpatialColumnGroup, (value) => value.toMap()),
    };
  }

  factory DataSetColumnGroup.fromMap(Map<String, dynamic> map) {
    return DataSetColumnGroup(
      geoSpatialColumnGroup: (() {
        final guardedValue = map['geoSpatialColumnGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataSetColumnGroupGeoSpatialColumnGroup.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
