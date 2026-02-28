// ignore_for_file: unused_element, unnecessary_cast

/// Describes an error related to the current state of the workflow.
class StateErrorResponse {
  /// Provides specifics about the error.
  final String details;

  /// The type of this state error.
  final String type;

  /// Creates a new [StateErrorResponse].
  /// [details] Provides specifics about the error.
  /// [type] The type of this state error.
  StateErrorResponse({
    required this.details,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['details'] = details;
    map['type'] = type;
    return map;
  }

  factory StateErrorResponse.fromMap(Map<String, dynamic> map) {
    return StateErrorResponse(
      details: map['details'] as String,
      type: map['type'] as String,
    );
  }
}
