// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_operation.dart';

/// Dataflow Resource properties
class DataflowProperties {
  /// Mode for Dataflow. Optional; defaults to Enabled.
  final pulumi.Input<String>? mode;
  /// List of operations including source and destination references as well as transformation.
  final pulumi.Input<List<DataflowOperation>> operations;

  /// Creates a new [DataflowProperties].
  /// [mode] Mode for Dataflow. Optional; defaults to Enabled.
  /// [operations] List of operations including source and destination references as well as transformation.
  const DataflowProperties({
    this.mode,
    required this.operations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'operations': pulumi.Input.mapInputValue<List<DataflowOperation>, List<Map<String, dynamic>>>(operations, (value) => pulumi.Input.encodeList<DataflowOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataflowProperties.fromMap(Map<String, dynamic> map) {
    return DataflowProperties(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operations: pulumi.Input.fromValue(pulumi.Input.decodeList<DataflowOperation>(map['operations']!, (value) => DataflowOperation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

