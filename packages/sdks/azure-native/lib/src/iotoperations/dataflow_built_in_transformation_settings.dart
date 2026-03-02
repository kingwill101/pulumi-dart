// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_built_in_transformation_dataset.dart';
import 'dataflow_built_in_transformation_filter.dart';
import 'dataflow_built_in_transformation_map.dart';

/// Dataflow BuiltIn Transformation properties
class DataflowBuiltInTransformationSettings {
  /// Enrich data from Broker State Store. Dataset references a key in Broker State Store.
  final pulumi.Input<List<DataflowBuiltInTransformationDataset>>? datasets;
  /// Filters input record or datapoints based on condition.
  final pulumi.Input<List<DataflowBuiltInTransformationFilter>>? filter;
  /// Maps input to output message.
  final pulumi.Input<List<DataflowBuiltInTransformationMap>>? map;
  /// Reference to the schema that describes the output of the transformation.
  final pulumi.Input<String>? schemaRef;
  /// Serialization format. Optional; defaults to JSON. Allowed value JSON Schema/draft-7, Parquet. Default: Json
  final pulumi.Input<String>? serializationFormat;

  /// Creates a new [DataflowBuiltInTransformationSettings].
  /// [datasets] Enrich data from Broker State Store. Dataset references a key in Broker State Store.
  /// [filter] Filters input record or datapoints based on condition.
  /// [map] Maps input to output message.
  /// [schemaRef] Reference to the schema that describes the output of the transformation.
  /// [serializationFormat] Serialization format. Optional; defaults to JSON. Allowed value JSON Schema/draft-7, Parquet. Default: Json
  DataflowBuiltInTransformationSettings({
    this.datasets,
    this.filter,
    this.map,
    this.schemaRef,
    this.serializationFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets': ?pulumi.Input.mapOptionalInputValue<List<DataflowBuiltInTransformationDataset>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<DataflowBuiltInTransformationDataset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?pulumi.Input.mapOptionalInputValue<List<DataflowBuiltInTransformationFilter>, List<Map<String, dynamic>>>(filter, (value) => pulumi.Input.encodeList<DataflowBuiltInTransformationFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'map': ?pulumi.Input.mapOptionalInputValue<List<DataflowBuiltInTransformationMap>, List<Map<String, dynamic>>>(map, (value) => pulumi.Input.encodeList<DataflowBuiltInTransformationMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schemaRef': ?schemaRef,
      'serializationFormat': ?serializationFormat,
    };
  }

  factory DataflowBuiltInTransformationSettings.fromMap(Map<String, dynamic> map) {
    return DataflowBuiltInTransformationSettings(
      datasets: map['datasets'] == null ? null : (pulumi.Input.decodeList<DataflowBuiltInTransformationDataset>(map['datasets'], (value) => DataflowBuiltInTransformationDataset.fromMap((value as Map).cast<String, dynamic>()))).input(),
      filter: map['filter'] == null ? null : (pulumi.Input.decodeList<DataflowBuiltInTransformationFilter>(map['filter'], (value) => DataflowBuiltInTransformationFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      map: map['map'] == null ? null : (pulumi.Input.decodeList<DataflowBuiltInTransformationMap>(map['map'], (value) => DataflowBuiltInTransformationMap.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schemaRef: map['schemaRef'] == null ? null : (map['schemaRef'] as String).input(),
      serializationFormat: map['serializationFormat'] == null ? null : (map['serializationFormat'] as String).input(),
    );
  }
}

