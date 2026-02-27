// ignore_for_file: unused_element, unnecessary_cast

/// Describes an error related to the current state of the workflow.
class StateErrorResponseWorkflowsV1 {
  /// Provides specifics about the error.
  final String details;

  /// The type of this state error.
  final String type;

  StateErrorResponseWorkflowsV1({
    required this.details,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['details'] = details;
    map['type'] = type;
    return map;
  }

  factory StateErrorResponseWorkflowsV1.fromMap(Map<String, dynamic> map) {
    return StateErrorResponseWorkflowsV1(
      details: map['details'] as String,
      type: map['type'] as String,
    );
  }
}
