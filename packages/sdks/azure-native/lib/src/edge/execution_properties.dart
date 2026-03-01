// ignore_for_file: unused_element, unnecessary_cast


/// Execution Properties
class ExecutionProperties {
  /// Execution specification
  final dynamic specification;
  /// Workflow version of execution
  final String workflowVersionId;

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
      specification: map['specification'] == null ? null : map['specification'],
      workflowVersionId: map['workflowVersionId'] as String,
    );
  }
}

