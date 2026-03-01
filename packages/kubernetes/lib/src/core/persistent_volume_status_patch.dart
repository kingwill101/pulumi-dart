// ignore_for_file: unused_element, unnecessary_cast


/// PersistentVolumeStatus is the current status of a persistent volume.
class PersistentVolumeStatusPatch {
  /// lastPhaseTransitionTime is the time the phase transitioned from one to another and automatically resets to current time everytime a volume phase transitions.
  final String? lastPhaseTransitionTime;
  /// message is a human-readable message indicating details about why the volume is in this state.
  final String? message;
  /// phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase
  final String? phase;
  /// reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
  final String? reason;

  /// Creates a new [PersistentVolumeStatusPatch].
  /// [lastPhaseTransitionTime] lastPhaseTransitionTime is the time the phase transitioned from one to another and automatically resets to current time everytime a volume phase transitions.
  /// [message] message is a human-readable message indicating details about why the volume is in this state.
  /// [phase] phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase
  /// [reason] reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
  PersistentVolumeStatusPatch({
    this.lastPhaseTransitionTime,
    this.message,
    this.phase,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastPhaseTransitionTime': ?lastPhaseTransitionTime,
      'message': ?message,
      'phase': ?phase,
      'reason': ?reason,
    };
  }

  factory PersistentVolumeStatusPatch.fromMap(Map<String, dynamic> map) {
    return PersistentVolumeStatusPatch(
      lastPhaseTransitionTime: map['lastPhaseTransitionTime'] == null ? null : map['lastPhaseTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      phase: map['phase'] == null ? null : map['phase'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}

