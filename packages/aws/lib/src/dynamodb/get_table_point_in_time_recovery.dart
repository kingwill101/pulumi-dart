// ignore_for_file: unused_element, unnecessary_cast

class GetTablePointInTimeRecovery {
  final bool enabled;
  final int recoveryPeriodInDays;

  /// Creates a new [GetTablePointInTimeRecovery].
  /// [enabled] Required.
  /// [recoveryPeriodInDays] Required.
  GetTablePointInTimeRecovery({
    required this.enabled,
    required this.recoveryPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'recoveryPeriodInDays': recoveryPeriodInDays,
    };
  }

  factory GetTablePointInTimeRecovery.fromMap(Map<String, dynamic> map) {
    return GetTablePointInTimeRecovery(
      enabled: map['enabled'] as bool,
      recoveryPeriodInDays: map['recoveryPeriodInDays'] as int,
    );
  }
}
