// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_logical_table_map_data_transform.dart';
import 'get_data_set_logical_table_map_source.dart';

class GetDataSetLogicalTableMap {
  final String alias;
  final List<GetDataSetLogicalTableMapDataTransform> dataTransforms;
  final String logicalTableMapId;
  final List<GetDataSetLogicalTableMapSource> sources;

  /// Creates a new [GetDataSetLogicalTableMap].
  /// [alias] Required.
  /// [dataTransforms] Required.
  /// [logicalTableMapId] Required.
  /// [sources] Required.
  GetDataSetLogicalTableMap({
    required this.alias,
    required this.dataTransforms,
    required this.logicalTableMapId,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'dataTransforms': pulumi.Input.encodeList<GetDataSetLogicalTableMapDataTransform, Map<String, dynamic>>(dataTransforms, (value) => value.toMap()),
      'logicalTableMapId': logicalTableMapId,
      'sources': pulumi.Input.encodeList<GetDataSetLogicalTableMapSource, Map<String, dynamic>>(sources, (value) => value.toMap()),
    };
  }

  factory GetDataSetLogicalTableMap.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMap(
      alias: map['alias'] as String,
      dataTransforms: pulumi.Input.decodeList<GetDataSetLogicalTableMapDataTransform>(map['dataTransforms'], (value) => GetDataSetLogicalTableMapDataTransform.fromMap((value as Map).cast<String, dynamic>())),
      logicalTableMapId: map['logicalTableMapId'] as String,
      sources: pulumi.Input.decodeList<GetDataSetLogicalTableMapSource>(map['sources'], (value) => GetDataSetLogicalTableMapSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

