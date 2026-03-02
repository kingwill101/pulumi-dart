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
      operationName: map['operationName'] == null ? null : (map['operationName'] as String).input(),
      operationStatus: map['operationStatus'] == null ? null : (map['operationStatus'] as String).input(),
      operationTime: map['operationTime'] == null ? null : (map['operationTime'] as String).input(),
      operationTrigger: map['operationTrigger'] == null ? null : (map['operationTrigger'] as String).input(),
    );
  }
}

