// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The last operation on ComputeInstance.
class ComputeInstanceLastOperationResponse {
  /// Name of the last operation.
  final pulumi.Input<String>? operationName;
  /// Operation status.
  final pulumi.Input<String>? operationStatus;
  /// Time of the last operation.
  final pulumi.Input<String>? operationTime;
  /// Trigger of operation.
  final pulumi.Input<String>? operationTrigger;

  /// Creates a new [ComputeInstanceLastOperationResponse].
  /// [operationName] Name of the last operation.
  /// [operationStatus] Operation status.
  /// [operationTime] Time of the last operation.
  /// [operationTrigger] Trigger of operation.
  ComputeInstanceLastOperationResponse({
    this.operationName,
    this.operationStatus,
    this.operationTime,
    this.operationTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationName': ?operationName,
      'operationStatus': ?operationStatus,
      'operationTime': ?operationTime,
      'operationTrigger': ?operationTrigger,
    };
  }

  factory ComputeInstanceLastOperationResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceLastOperationResponse(
      operationName: (() { final guardedValue = map['operationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationStatus: (() { final guardedValue = map['operationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationTime: (() { final guardedValue = map['operationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationTrigger: (() { final guardedValue = map['operationTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

