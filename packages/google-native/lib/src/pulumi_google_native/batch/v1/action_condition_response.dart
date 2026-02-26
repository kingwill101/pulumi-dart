// ignore_for_file: unused_element, unnecessary_cast

/// Conditions for actions to deal with task failures.
class ActionConditionResponse {
  /// Exit codes of a task execution. If there are more than 1 exit codes, when task executes with any of the exit code in the list, the condition is met and the action will be executed.
  final List<int> exitCodes;

  ActionConditionResponse({
    required this.exitCodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exitCodes'] = exitCodes;
    return map;
  }

  factory ActionConditionResponse.fromMap(Map<String, dynamic> map) {
    return ActionConditionResponse(
      exitCodes: (map['exitCodes'] as List).cast<int>(),
    );
  }
}
