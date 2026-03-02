// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_logical_table_map_data_transform.dart';
import 'data_set_logical_table_map_source.dart';

class DataSetLogicalTableMap {
  /// A display name for the logical table.
  final pulumi.Input<String> alias;
  /// Transform operations that act on this logical table. For this structure to be valid, only one of the attributes can be non-null. See data_transforms.
  final pulumi.Input<List<DataSetLogicalTableMapDataTransform>>? dataTransforms;
  /// Key of the logical table map.
  final pulumi.Input<String> logicalTableMapId;
  /// Source of this logical table. See source.
  final pulumi.Input<DataSetLogicalTableMapSource> source;

  /// Creates a new [DataSetLogicalTableMap].
  /// [alias] A display name for the logical table.
  /// [dataTransforms] Transform operations that act on this logical table. For this structure to be valid, only one of the attributes can be non-null. See data_transforms.
  /// [logicalTableMapId] Key of the logical table map.
  /// [source] Source of this logical table. See source.
  DataSetLogicalTableMap({
    required this.alias,
    this.dataTransforms,
    required this.logicalTableMapId,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'dataTransforms': ?pulumi.Input.mapOptionalInputValue<List<DataSetLogicalTableMapDataTransform>, List<Map<String, dynamic>>>(dataTransforms, (value) => pulumi.Input.encodeList<DataSetLogicalTableMapDataTransform, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logicalTableMapId': logicalTableMapId,
      'source': pulumi.Input.mapInputValue<DataSetLogicalTableMapSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DataSetLogicalTableMap.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMap(
      alias: (map['alias'] as String).input(),
      dataTransforms: map['dataTransforms'] == null ? null : ((pulumi.Input.decodeList<DataSetLogicalTableMapDataTransform>(map['dataTransforms']!, (value) => DataSetLogicalTableMapDataTransform.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      logicalTableMapId: (map['logicalTableMapId'] as String).input(),
      source: (DataSetLogicalTableMapSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

