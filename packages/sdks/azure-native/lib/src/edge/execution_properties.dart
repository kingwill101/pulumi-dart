// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Execution Properties
class ExecutionProperties {
  /// Execution specification
  final pulumi.Input<dynamic>? specification;
  /// Workflow version of execution
  final pulumi.Input<String> workflowVersionId;

  /// Creates a new [ExecutionProperties].
  /// [specification] Execution specification
  /// [workflowVersionId] Workflow version of execution
  ExecutionProperties({
    this.specification,
    required this.workflowVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': ?specification,
      'workflowVersionId': workflowVersionId,
    };
  }

  factory ExecutionProperties.fromMap(Map<String, dynamic> map) {
    return ExecutionProperties(
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      workflowVersionId: pulumi.Input.fromValue(map['workflowVersionId'] as String),
    );
  }
}

