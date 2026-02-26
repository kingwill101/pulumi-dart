// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_data_set_logical_table_map_data_transform/get_data_set_logical_table_map_data_transform.dart';
import '../get_data_set_logical_table_map_source/get_data_set_logical_table_map_source.dart';

class GetDataSetLogicalTableMap {
  final String alias;
  final List<GetDataSetLogicalTableMapDataTransform> dataTransforms;
  final String logicalTableMapId;
  final List<GetDataSetLogicalTableMapSource> sources;

  GetDataSetLogicalTableMap({
    required this.alias,
    required this.dataTransforms,
    required this.logicalTableMapId,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alias'] = alias;
    map['dataTransforms'] = Input.encodeList<
        GetDataSetLogicalTableMapDataTransform,
        Map<String, dynamic>>(dataTransforms, (value) => value.toMap());
    map['logicalTableMapId'] = logicalTableMapId;
    map['sources'] =
        Input.encodeList<GetDataSetLogicalTableMapSource, Map<String, dynamic>>(
            sources, (value) => value.toMap());
    return map;
  }

  factory GetDataSetLogicalTableMap.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMap(
      alias: map['alias'] as String,
      dataTransforms: Input.decodeList<GetDataSetLogicalTableMapDataTransform>(
          map['dataTransforms'],
          (value) => GetDataSetLogicalTableMapDataTransform.fromMap(
              (value as Map).cast<String, dynamic>())),
      logicalTableMapId: map['logicalTableMapId'] as String,
      sources: Input.decodeList<GetDataSetLogicalTableMapSource>(
          map['sources'],
          (value) => GetDataSetLogicalTableMapSource.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
