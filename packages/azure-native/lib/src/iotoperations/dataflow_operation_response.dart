// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_built_in_transformation_settings_response.dart';
import 'dataflow_destination_operation_settings_response.dart';
import 'dataflow_source_operation_settings_response.dart';

/// Dataflow Operation properties. NOTE - One only method is allowed to be used for one entry.
class DataflowOperationResponse {
  /// Built In Transformation configuration.
  final DataflowBuiltInTransformationSettingsResponse? builtInTransformationSettings;
  /// Destination configuration.
  final DataflowDestinationOperationSettingsResponse? destinationSettings;
  /// Optional user provided name of the transformation.
  final String? name;
  /// Type of operation.
  final String operationType;
  /// Source configuration.
  final DataflowSourceOperationSettingsResponse? sourceSettings;

  /// Creates a new [DataflowOperationResponse].
  /// [builtInTransformationSettings] Built In Transformation configuration.
  /// [destinationSettings] Destination configuration.
  /// [name] Optional user provided name of the transformation.
  /// [operationType] Type of operation.
  /// [sourceSettings] Source configuration.
  DataflowOperationResponse({
    this.builtInTransformationSettings,
    this.destinationSettings,
    this.name,
    required this.operationType,
    this.sourceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtInTransformationSettings': ?builtInTransformationSettings == null ? null : builtInTransformationSettings!.toMap(),
      'destinationSettings': ?destinationSettings == null ? null : destinationSettings!.toMap(),
      'name': ?name,
      'operationType': operationType,
      'sourceSettings': ?sourceSettings == null ? null : sourceSettings!.toMap(),
    };
  }

  factory DataflowOperationResponse.fromMap(Map<String, dynamic> map) {
    return DataflowOperationResponse(
      builtInTransformationSettings: map['builtInTransformationSettings'] == null ? null : DataflowBuiltInTransformationSettingsResponse.fromMap((map['builtInTransformationSettings'] as Map).cast<String, dynamic>()),
      destinationSettings: map['destinationSettings'] == null ? null : DataflowDestinationOperationSettingsResponse.fromMap((map['destinationSettings'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      operationType: map['operationType'] as String,
      sourceSettings: map['sourceSettings'] == null ? null : DataflowSourceOperationSettingsResponse.fromMap((map['sourceSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

