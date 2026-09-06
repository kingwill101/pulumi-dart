// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_built_in_transformation_dataset_response.dart';
import 'dataflow_built_in_transformation_filter_response.dart';
import 'dataflow_built_in_transformation_map_response.dart';

/// Dataflow BuiltIn Transformation properties
class DataflowBuiltInTransformationSettingsResponse {
  /// Enrich data from Broker State Store. Dataset references a key in Broker State Store.
  final pulumi.Input<List<DataflowBuiltInTransformationDatasetResponse>?>? datasets;
  /// Filters input record or datapoints based on condition.
  final pulumi.Input<List<DataflowBuiltInTransformationFilterResponse>?>? filter;
  /// Maps input to output message.
  final pulumi.Input<List<DataflowBuiltInTransformationMapResponse>?>? map;
  /// Reference to the schema that describes the output of the transformation.
  final pulumi.Input<String?>? schemaRef;
  /// Serialization format. Optional; defaults to JSON. Allowed value JSON Schema/draft-7, Parquet. Default: Json
  final pulumi.Input<String?>? serializationFormat;

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
    pulumi.Input<String?>? serializationFormat,
  }) : serializationFormat = serializationFormat ?? pulumi.Input.fromValue('Json');

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
      datasets: (() { final guardedValue = map['datasets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataflowBuiltInTransformationDatasetResponse>(guardedValue, (value) => DataflowBuiltInTransformationDatasetResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataflowBuiltInTransformationFilterResponse>(guardedValue, (value) => DataflowBuiltInTransformationFilterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      map: (() { final guardedValue = map['map']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataflowBuiltInTransformationMapResponse>(guardedValue, (value) => DataflowBuiltInTransformationMapResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schemaRef: (() { final guardedValue = map['schemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serializationFormat: (() { final guardedValue = map['serializationFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
