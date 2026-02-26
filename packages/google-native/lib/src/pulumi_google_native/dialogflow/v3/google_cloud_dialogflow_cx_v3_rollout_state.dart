// ignore_for_file: unused_element, unnecessary_cast

/// State of the auto-rollout process.
class GoogleCloudDialogflowCxV3RolloutState {
  /// Start time of the current step.
  final String? startTime;

  /// Display name of the current auto rollout step.
  final String? step;

  /// Index of the current step in the auto rollout steps list.
  final int? stepIndex;

  GoogleCloudDialogflowCxV3RolloutState({
    this.startTime,
    this.step,
    this.stepIndex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final stepValue = step;
    if (stepValue != null) {
      map['step'] = stepValue;
    }
    final stepIndexValue = stepIndex;
    if (stepIndexValue != null) {
      map['stepIndex'] = stepIndexValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3RolloutState.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3RolloutState(
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      step: map['step'] == null ? null : map['step'] as String,
      stepIndex: map['stepIndex'] == null ? null : map['stepIndex'] as int,
    );
  }
}
