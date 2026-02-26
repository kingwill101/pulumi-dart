// ignore_for_file: unused_element, unnecessary_cast

class RuleLockConfigurationUnlockDelay {
  /// Unit of time in which to measure the unlock delay. Currently, the unlock delay can be measure only in days.
  final String unlockDelayUnit;

  /// Unlock delay period, measured in the unit specified for UnlockDelayUnit.
  final int unlockDelayValue;

  RuleLockConfigurationUnlockDelay({
    required this.unlockDelayUnit,
    required this.unlockDelayValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unlockDelayUnit'] = unlockDelayUnit;
    map['unlockDelayValue'] = unlockDelayValue;
    return map;
  }

  factory RuleLockConfigurationUnlockDelay.fromMap(Map<String, dynamic> map) {
    return RuleLockConfigurationUnlockDelay(
      unlockDelayUnit: map['unlockDelayUnit'] as String,
      unlockDelayValue: map['unlockDelayValue'] as int,
    );
  }
}
