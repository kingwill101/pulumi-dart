// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_set_logical_table_map_data_transform/data_set_logical_table_map_data_transform.dart';
import '../data_set_logical_table_map_source/data_set_logical_table_map_source.dart';

class DataSetLogicalTableMap {
  /// A display name for the logical table.
  final String alias;

  /// Transform operations that act on this logical table. For this structure to be valid, only one of the attributes can be non-null. See data_transforms.
  final List<DataSetLogicalTableMapDataTransform>? dataTransforms;

  /// Key of the logical table map.
  final String logicalTableMapId;

  /// Source of this logical table. See source.
  final DataSetLogicalTableMapSource source;

  DataSetLogicalTableMap({
    required this.alias,
    this.dataTransforms,
    required this.logicalTableMapId,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alias'] = alias;
    final dataTransformsValue = dataTransforms;
    if (dataTransformsValue != null) {
      map['dataTransforms'] = pulumi.Input.encodeList<
          DataSetLogicalTableMapDataTransform,
          Map<String, dynamic>>(dataTransformsValue, (value) => value.toMap());
    }
    map['logicalTableMapId'] = logicalTableMapId;
    map['source'] = source.toMap();
    return map;
  }

  factory DataSetLogicalTableMap.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMap(
      alias: map['alias'] as String,
      dataTransforms: map['dataTransforms'] == null
          ? null
          : pulumi.Input.decodeList<DataSetLogicalTableMapDataTransform>(
              map['dataTransforms'],
              (value) => DataSetLogicalTableMapDataTransform.fromMap(
                  (value as Map).cast<String, dynamic>())),
      logicalTableMapId: map['logicalTableMapId'] as String,
      source: DataSetLogicalTableMapSource.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
