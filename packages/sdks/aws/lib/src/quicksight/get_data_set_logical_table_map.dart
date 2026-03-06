// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_logical_table_map_data_transform.dart';
import 'get_data_set_logical_table_map_source.dart';

class GetDataSetLogicalTableMap {
  final pulumi.Input<String> alias;
  final pulumi.Input<List<GetDataSetLogicalTableMapDataTransform>> dataTransforms;
  final pulumi.Input<String> logicalTableMapId;
  final pulumi.Input<List<GetDataSetLogicalTableMapSource>> sources;

  /// Creates a new [GetDataSetLogicalTableMap].
  /// [alias] Required.
  /// [dataTransforms] Required.
  /// [logicalTableMapId] Required.
  /// [sources] Required.
  const GetDataSetLogicalTableMap({
    required this.alias,
    required this.dataTransforms,
    required this.logicalTableMapId,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'dataTransforms': pulumi.Input.mapInputValue<List<GetDataSetLogicalTableMapDataTransform>, List<Map<String, dynamic>>>(dataTransforms, (value) => pulumi.Input.encodeList<GetDataSetLogicalTableMapDataTransform, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logicalTableMapId': logicalTableMapId,
      'sources': pulumi.Input.mapInputValue<List<GetDataSetLogicalTableMapSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<GetDataSetLogicalTableMapSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataSetLogicalTableMap.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMap(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      dataTransforms: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetLogicalTableMapDataTransform>(map['dataTransforms']!, (value) => GetDataSetLogicalTableMapDataTransform.fromMap((value as Map).cast<String, dynamic>()))),
      logicalTableMapId: pulumi.Input.fromValue(map['logicalTableMapId'] as String),
      sources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetLogicalTableMapSource>(map['sources']!, (value) => GetDataSetLogicalTableMapSource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

