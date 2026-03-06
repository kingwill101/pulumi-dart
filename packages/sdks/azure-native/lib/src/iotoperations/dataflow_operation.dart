// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_built_in_transformation_settings.dart';
import 'dataflow_destination_operation_settings.dart';
import 'dataflow_source_operation_settings.dart';

/// Dataflow Operation properties. NOTE - One only method is allowed to be used for one entry.
class DataflowOperation {
  /// Built In Transformation configuration.
  final pulumi.Input<DataflowBuiltInTransformationSettings>? builtInTransformationSettings;
  /// Destination configuration.
  final pulumi.Input<DataflowDestinationOperationSettings>? destinationSettings;
  /// Optional user provided name of the transformation.
  final pulumi.Input<String>? name;
  /// Type of operation.
  final pulumi.Input<String> operationType;
  /// Source configuration.
  final pulumi.Input<DataflowSourceOperationSettings>? sourceSettings;

  /// Creates a new [DataflowOperation].
  /// [builtInTransformationSettings] Built In Transformation configuration.
  /// [destinationSettings] Destination configuration.
  /// [name] Optional user provided name of the transformation.
  /// [operationType] Type of operation.
  /// [sourceSettings] Source configuration.
  const DataflowOperation({
    this.builtInTransformationSettings,
    this.destinationSettings,
    this.name,
    required this.operationType,
    this.sourceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtInTransformationSettings': ?pulumi.Input.mapOptionalInputValue<DataflowBuiltInTransformationSettings, Map<String, dynamic>>(builtInTransformationSettings, (value) => value.toMap()),
      'destinationSettings': ?pulumi.Input.mapOptionalInputValue<DataflowDestinationOperationSettings, Map<String, dynamic>>(destinationSettings, (value) => value.toMap()),
      'name': ?name,
      'operationType': operationType,
      'sourceSettings': ?pulumi.Input.mapOptionalInputValue<DataflowSourceOperationSettings, Map<String, dynamic>>(sourceSettings, (value) => value.toMap()),
    };
  }

  factory DataflowOperation.fromMap(Map<String, dynamic> map) {
    return DataflowOperation(
      builtInTransformationSettings: (() { final guardedValue = map['builtInTransformationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowBuiltInTransformationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationSettings: (() { final guardedValue = map['destinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowDestinationOperationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationType: pulumi.Input.fromValue(map['operationType'] as String),
      sourceSettings: (() { final guardedValue = map['sourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowSourceOperationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

