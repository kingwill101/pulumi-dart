// ignore_for_file: unused_element, unnecessary_cast


class NestServiceInstanceOperationMetadata {
  /// The ID of the imported service instance.
  final String? operatedServiceInstanceId;
  /// The end time of O&M.
  final String? operationEndTime;
  /// The start time of O&M.
  final String? operationStartTime;
  /// The list of imported resources.
  final String? resources;

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
      operatedServiceInstanceId: map['operatedServiceInstanceId'] == null ? null : map['operatedServiceInstanceId'] as String,
      operationEndTime: map['operationEndTime'] == null ? null : map['operationEndTime'] as String,
      operationStartTime: map['operationStartTime'] == null ? null : map['operationStartTime'] as String,
      resources: map['resources'] == null ? null : map['resources'] as String,
    );
  }
}

