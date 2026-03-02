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
  NestServiceInstanceOperationMetadata({
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
      operatedServiceInstanceId: map['operatedServiceInstanceId'] == null ? null : (map['operatedServiceInstanceId']! as String).input(),
      operationEndTime: map['operationEndTime'] == null ? null : (map['operationEndTime']! as String).input(),
      operationStartTime: map['operationStartTime'] == null ? null : (map['operationStartTime']! as String).input(),
      resources: map['resources'] == null ? null : (map['resources']! as String).input(),
    );
  }
}

