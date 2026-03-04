// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_operation_response.dart';

/// Dataflow Resource properties
class DataflowPropertiesResponse {
  /// Mode for Dataflow. Optional; defaults to Enabled.
  final pulumi.Input<String>? mode;

  /// List of operations including source and destination references as well as transformation.
  final pulumi.Input<List<DataflowOperationResponse>> operations;

  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [DataflowPropertiesResponse].
  /// [mode] Mode for Dataflow. Optional; defaults to Enabled.
  /// [operations] List of operations including source and destination references as well as transformation.
  /// [provisioningState] The status of the last operation.
  DataflowPropertiesResponse({
    this.mode,
    required this.operations,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'operations':
          pulumi.Input.mapInputValue<
            List<DataflowOperationResponse>,
            List<Map<String, dynamic>>
          >(
            operations,
            (value) =>
                pulumi.Input.encodeList<
                  DataflowOperationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'provisioningState': provisioningState,
    };
  }

  factory DataflowPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataflowPropertiesResponse(
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DataflowOperationResponse>(
          map['operations']!,
          (value) => DataflowOperationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
