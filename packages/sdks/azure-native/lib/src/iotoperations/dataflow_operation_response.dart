// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_built_in_transformation_settings_response.dart';
import 'dataflow_destination_operation_settings_response.dart';
import 'dataflow_source_operation_settings_response.dart';

/// Dataflow Operation properties. NOTE - One only method is allowed to be used for one entry.
class DataflowOperationResponse {
  /// Built In Transformation configuration.
  final pulumi.Input<DataflowBuiltInTransformationSettingsResponse>? builtInTransformationSettings;
  /// Destination configuration.
  final pulumi.Input<DataflowDestinationOperationSettingsResponse>? destinationSettings;
  /// Optional user provided name of the transformation.
  final pulumi.Input<String>? name;
  /// Type of operation.
  final pulumi.Input<String> operationType;
  /// Source configuration.
  final pulumi.Input<DataflowSourceOperationSettingsResponse>? sourceSettings;

  /// Creates a new [DataflowOperationResponse].
  /// [builtInTransformationSettings] Built In Transformation configuration.
  /// [destinationSettings] Destination configuration.
  /// [name] Optional user provided name of the transformation.
  /// [operationType] Type of operation.
  /// [sourceSettings] Source configuration.
  const DataflowOperationResponse({
    this.builtInTransformationSettings,
    this.destinationSettings,
    this.name,
    required this.operationType,
    this.sourceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtInTransformationSettings': ?pulumi.Input.mapOptionalInputValue<DataflowBuiltInTransformationSettingsResponse, Map<String, dynamic>>(builtInTransformationSettings, (value) => value.toMap()),
      'destinationSettings': ?pulumi.Input.mapOptionalInputValue<DataflowDestinationOperationSettingsResponse, Map<String, dynamic>>(destinationSettings, (value) => value.toMap()),
      'name': ?name,
      'operationType': operationType,
      'sourceSettings': ?pulumi.Input.mapOptionalInputValue<DataflowSourceOperationSettingsResponse, Map<String, dynamic>>(sourceSettings, (value) => value.toMap()),
    };
  }

  factory DataflowOperationResponse.fromMap(Map<String, dynamic> map) {
    return DataflowOperationResponse(
      builtInTransformationSettings: (() { final guardedValue = map['builtInTransformationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowBuiltInTransformationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationSettings: (() { final guardedValue = map['destinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowDestinationOperationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationType: pulumi.Input.fromValue(map['operationType'] as String),
      sourceSettings: (() { final guardedValue = map['sourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowSourceOperationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
