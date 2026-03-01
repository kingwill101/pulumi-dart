// ignore_for_file: unused_element, unnecessary_cast


/// The properties of business process mapping.
class BusinessProcessMappingItemResponse {
  /// The logic app resource id.
  final String? logicAppResourceId;
  /// The operation name.
  final String? operationName;
  /// The mapping item operation type of the business process.
  final String? operationType;
  /// The workflow name within the logic app.
  final String? workflowName;

  /// Creates a new [BusinessProcessMappingItemResponse].
  /// [logicAppResourceId] The logic app resource id.
  /// [operationName] The operation name.
  /// [operationType] The mapping item operation type of the business process.
  /// [workflowName] The workflow name within the logic app.
  BusinessProcessMappingItemResponse({
    this.logicAppResourceId,
    this.operationName,
    this.operationType,
    this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logicAppResourceId': ?logicAppResourceId,
      'operationName': ?operationName,
      'operationType': ?operationType,
      'workflowName': ?workflowName,
    };
  }

  factory BusinessProcessMappingItemResponse.fromMap(Map<String, dynamic> map) {
    return BusinessProcessMappingItemResponse(
      logicAppResourceId: map['logicAppResourceId'] == null ? null : map['logicAppResourceId'] as String,
      operationName: map['operationName'] == null ? null : map['operationName'] as String,
      operationType: map['operationType'] == null ? null : map['operationType'] as String,
      workflowName: map['workflowName'] == null ? null : map['workflowName'] as String,
    );
  }
}

