// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_built_in_transformation_dataset_response.dart';
import 'dataflow_built_in_transformation_filter_response.dart';
import 'dataflow_built_in_transformation_map_response.dart';

/// Dataflow BuiltIn Transformation properties
class DataflowBuiltInTransformationSettingsResponse {
  /// Enrich data from Broker State Store. Dataset references a key in Broker State Store.
  final pulumi.Input<List<DataflowBuiltInTransformationDatasetResponse>>? datasets;
  /// Filters input record or datapoints based on condition.
  final pulumi.Input<List<DataflowBuiltInTransformationFilterResponse>>? filter;
  /// Maps input to output message.
  final pulumi.Input<List<DataflowBuiltInTransformationMapResponse>>? map;
  /// Reference to the schema that describes the output of the transformation.
  final pulumi.Input<String>? schemaRef;
  /// Serialization format. Optional; defaults to JSON. Allowed value JSON Schema/draft-7, Parquet. Default: Json
  final pulumi.Input<String>? serializationFormat;

  /// Creates a new [DataflowBuiltInTransformationSettingsResponse].
  /// [datasets] Enrich data from Broker State Store. Dataset references a key in Broker State Store.
  /// [filter] Filters input record or datapoints based on condition.
  /// [map] Maps input to output message.
  /// [schemaRef] Reference to the schema that describes the output of the transformation.
  /// [serializationFormat] Serialization format. Optional; defaults to JSON. Allowed value JSON Schema/draft-7, Parquet. Default: Json
  DataflowBuiltInTransformationSettingsResponse({
    this.datasets,
    this.filter,
    this.map,
    this.schemaRef,
    this.serializationFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets': ?pulumi.Input.mapOptionalInputValue<List<DataflowBuiltInTransformationDatasetResponse>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<DataflowBuiltInTransformationDatasetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?pulumi.Input.mapOptionalInputValue<List<DataflowBuiltInTransformationFilterResponse>, List<Map<String, dynamic>>>(filter, (value) => pulumi.Input.encodeList<DataflowBuiltInTransformationFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'map': ?pulumi.Input.mapOptionalInputValue<List<DataflowBuiltInTransformationMapResponse>, List<Map<String, dynamic>>>(map, (value) => pulumi.Input.encodeList<DataflowBuiltInTransformationMapResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schemaRef': ?schemaRef,
      'serializationFormat': ?serializationFormat,
    };
  }

  factory DataflowBuiltInTransformationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DataflowBuiltInTransformationSettingsResponse(
      datasets: map['datasets'] == null ? null : (pulumi.Input.decodeList<DataflowBuiltInTransformationDatasetResponse>(map['datasets'], (value) => DataflowBuiltInTransformationDatasetResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      filter: map['filter'] == null ? null : (pulumi.Input.decodeList<DataflowBuiltInTransformationFilterResponse>(map['filter'], (value) => DataflowBuiltInTransformationFilterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      map: map['map'] == null ? null : (pulumi.Input.decodeList<DataflowBuiltInTransformationMapResponse>(map['map'], (value) => DataflowBuiltInTransformationMapResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schemaRef: map['schemaRef'] == null ? null : (map['schemaRef'] as String).input(),
      serializationFormat: map['serializationFormat'] == null ? null : (map['serializationFormat'] as String).input(),
    );
  }
}

