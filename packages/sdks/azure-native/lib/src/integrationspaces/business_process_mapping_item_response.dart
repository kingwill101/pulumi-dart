// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of business process mapping.
class BusinessProcessMappingItemResponse {
  /// The logic app resource id.
  final pulumi.Input<String?>? logicAppResourceId;
  /// The operation name.
  final pulumi.Input<String?>? operationName;
  /// The mapping item operation type of the business process.
  final pulumi.Input<String?>? operationType;
  /// The workflow name within the logic app.
  final pulumi.Input<String?>? workflowName;

  /// Creates a new [BusinessProcessMappingItemResponse].
  /// [logicAppResourceId] The logic app resource id.
  /// [operationName] The operation name.
  /// [operationType] The mapping item operation type of the business process.
  /// [workflowName] The workflow name within the logic app.
  const BusinessProcessMappingItemResponse({
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
      logicAppResourceId: (() { final guardedValue = map['logicAppResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationName: (() { final guardedValue = map['operationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationType: (() { final guardedValue = map['operationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowName: (() { final guardedValue = map['workflowName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
