// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_built_in_transformation_settings.dart';
import 'dataflow_destination_operation_settings.dart';
import 'dataflow_source_operation_settings.dart';

/// Dataflow Operation properties. NOTE - One only method is allowed to be used for one entry.
class DataflowOperation {
  /// Built In Transformation configuration.
  final DataflowBuiltInTransformationSettings? builtInTransformationSettings;
  /// Destination configuration.
  final DataflowDestinationOperationSettings? destinationSettings;
  /// Optional user provided name of the transformation.
  final String? name;
  /// Type of operation.
  final String operationType;
  /// Source configuration.
  final DataflowSourceOperationSettings? sourceSettings;

  /// Creates a new [DataflowOperation].
  /// [builtInTransformationSettings] Built In Transformation configuration.
  /// [destinationSettings] Destination configuration.
  /// [name] Optional user provided name of the transformation.
  /// [operationType] Type of operation.
  /// [sourceSettings] Source configuration.
  DataflowOperation({
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

  factory DataflowOperation.fromMap(Map<String, dynamic> map) {
    return DataflowOperation(
      builtInTransformationSettings: map['builtInTransformationSettings'] == null ? null : DataflowBuiltInTransformationSettings.fromMap((map['builtInTransformationSettings'] as Map).cast<String, dynamic>()),
      destinationSettings: map['destinationSettings'] == null ? null : DataflowDestinationOperationSettings.fromMap((map['destinationSettings'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      operationType: map['operationType'] as String,
      sourceSettings: map['sourceSettings'] == null ? null : DataflowSourceOperationSettings.fromMap((map['sourceSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

