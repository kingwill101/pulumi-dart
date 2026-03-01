// ignore_for_file: unused_element, unnecessary_cast


class PolicyVMTieringPolicyArchivedRestorePoint {
  /// The number of days/weeks/months/years to retain backups in current tier before tiering.
  final int? duration;
  /// The retention duration type. Possible values are `Days`, `Weeks`, `Months` and `Years`.
  final String? durationType;
  /// The tiering mode to control automatic tiering of recovery points. Possible values are `TierAfter` and `TierRecommended`.
  final String mode;

  /// Creates a new [PolicyVMTieringPolicyArchivedRestorePoint].
  /// [duration] The number of days/weeks/months/years to retain backups in current tier before tiering.
  /// [durationType] The retention duration type. Possible values are `Days`, `Weeks`, `Months` and `Years`.
  /// [mode] The tiering mode to control automatic tiering of recovery points. Possible values are `TierAfter` and `TierRecommended`.
  PolicyVMTieringPolicyArchivedRestorePoint({
    this.duration,
    this.durationType,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'durationType': ?durationType,
      'mode': mode,
    };
  }

  factory PolicyVMTieringPolicyArchivedRestorePoint.fromMap(Map<String, dynamic> map) {
    return PolicyVMTieringPolicyArchivedRestorePoint(
      duration: map['duration'] == null ? null : map['duration'] as int,
      durationType: map['durationType'] == null ? null : map['durationType'] as String,
      mode: map['mode'] as String,
    );
  }
}

