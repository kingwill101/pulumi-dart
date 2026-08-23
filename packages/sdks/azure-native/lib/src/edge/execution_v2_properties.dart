// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ExecutionV2 Properties
class ExecutionV2Properties {
  /// ExecutionV2 specification
  final pulumi.Input<dynamic>? specification;
  /// Workflow version of ExecutionV2
  final pulumi.Input<String>? workflowVersionId;

  /// Creates a new [ExecutionV2Properties].
  /// [specification] ExecutionV2 specification
  /// [workflowVersionId] Workflow version of ExecutionV2
  const ExecutionV2Properties({
    this.specification,
    this.workflowVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': ?specification,
      'workflowVersionId': ?workflowVersionId,
    };
  }

  factory ExecutionV2Properties.fromMap(Map<String, dynamic> map) {
    return ExecutionV2Properties(
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      workflowVersionId: (() { final guardedValue = map['workflowVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
