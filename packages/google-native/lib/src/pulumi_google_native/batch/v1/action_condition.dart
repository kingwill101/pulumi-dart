// ignore_for_file: unused_element, unnecessary_cast

/// Conditions for actions to deal with task failures.
class ActionCondition {
  /// Exit codes of a task execution. If there are more than 1 exit codes, when task executes with any of the exit code in the list, the condition is met and the action will be executed.
  final List<int>? exitCodes;

  ActionCondition({
    this.exitCodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exitCodesValue = exitCodes;
    if (exitCodesValue != null) {
      map['exitCodes'] = exitCodesValue;
    }
    return map;
  }

  factory ActionCondition.fromMap(Map<String, dynamic> map) {
    return ActionCondition(
      exitCodes: map['exitCodes'] == null
          ? null
          : (map['exitCodes'] as List).cast<int>(),
    );
  }
}
