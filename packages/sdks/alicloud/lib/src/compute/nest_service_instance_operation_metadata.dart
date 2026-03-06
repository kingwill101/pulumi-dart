// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NestServiceInstanceOperationMetadata {
  /// The ID of the imported service instance.
  final pulumi.Input<String>? operatedServiceInstanceId;
  /// The end time of O&M.
  final pulumi.Input<String>? operationEndTime;
  /// The start time of O&M.
  final pulumi.Input<String>? operationStartTime;
  /// The list of imported resources.
  final pulumi.Input<String>? resources;

  /// Creates a new [NestServiceInstanceOperationMetadata].
  /// [operatedServiceInstanceId] The ID of the imported service instance.
  /// [operationEndTime] The end time of O&M.
  /// [operationStartTime] The start time of O&M.
  /// [resources] The list of imported resources.
  const NestServiceInstanceOperationMetadata({
    this.operatedServiceInstanceId,
    this.operationEndTime,
    this.operationStartTime,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatedServiceInstanceId': ?operatedServiceInstanceId,
      'operationEndTime': ?operationEndTime,
      'operationStartTime': ?operationStartTime,
      'resources': ?resources,
    };
  }

  factory NestServiceInstanceOperationMetadata.fromMap(Map<String, dynamic> map) {
    return NestServiceInstanceOperationMetadata(
      operatedServiceInstanceId: (() { final guardedValue = map['operatedServiceInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationEndTime: (() { final guardedValue = map['operationEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationStartTime: (() { final guardedValue = map['operationStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

