// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_column_group_geo_spatial_column_group.dart';

class GetDataSetColumnGroup {
  final List<GetDataSetColumnGroupGeoSpatialColumnGroup> geoSpatialColumnGroups;

  /// Creates a new [GetDataSetColumnGroup].
  /// [geoSpatialColumnGroups] Required.
  GetDataSetColumnGroup({
    required this.geoSpatialColumnGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoSpatialColumnGroups': pulumi.Input.encodeList<GetDataSetColumnGroupGeoSpatialColumnGroup, Map<String, dynamic>>(geoSpatialColumnGroups, (value) => value.toMap()),
    };
  }

  factory GetDataSetColumnGroup.fromMap(Map<String, dynamic> map) {
    return GetDataSetColumnGroup(
      geoSpatialColumnGroups: pulumi.Input.decodeList<GetDataSetColumnGroupGeoSpatialColumnGroup>(map['geoSpatialColumnGroups'], (value) => GetDataSetColumnGroupGeoSpatialColumnGroup.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

