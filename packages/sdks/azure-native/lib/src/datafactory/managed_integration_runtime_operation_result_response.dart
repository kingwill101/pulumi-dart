// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of managed integration runtime operation result.
class ManagedIntegrationRuntimeOperationResultResponse {
  /// The activity id for the operation request.
  final pulumi.Input<String> activityId;
  /// The error code.
  final pulumi.Input<String> errorCode;
  /// Managed integration runtime error parameters.
  final pulumi.Input<List<String>> parameters;
  /// The operation result.
  final pulumi.Input<String> result;
  /// The start time of the operation.
  final pulumi.Input<String> startTime;
  /// The operation type. Could be start or stop.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedIntegrationRuntimeOperationResultResponse].
  /// [activityId] The activity id for the operation request.
  /// [errorCode] The error code.
  /// [parameters] Managed integration runtime error parameters.
  /// [result] The operation result.
  /// [startTime] The start time of the operation.
  /// [type] The operation type. Could be start or stop.
  ManagedIntegrationRuntimeOperationResultResponse({
    required this.activityId,
    required this.errorCode,
    required this.parameters,
    required this.result,
    required this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityId': activityId,
      'errorCode': errorCode,
      'parameters': parameters,
      'result': result,
      'startTime': startTime,
      'type': type,
    };
  }

  factory ManagedIntegrationRuntimeOperationResultResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntimeOperationResultResponse(
      activityId: pulumi.Input.fromValue(map['activityId'] as String),
      errorCode: pulumi.Input.fromValue(map['errorCode'] as String),
      parameters: pulumi.Input.fromValue((map['parameters'] as List).cast<String>()),
      result: pulumi.Input.fromValue(map['result'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

