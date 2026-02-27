// ignore_for_file: unused_element, unnecessary_cast

import '../rule_lock_configuration_unlock_delay/rule_lock_configuration_unlock_delay.dart';

class RuleLockConfiguration {
  /// Information about the retention rule unlock delay. See `unlock_delay` below.
  final RuleLockConfigurationUnlockDelay unlockDelay;

  RuleLockConfiguration({
    required this.unlockDelay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unlockDelay'] = unlockDelay.toMap();
    return map;
  }

  factory RuleLockConfiguration.fromMap(Map<String, dynamic> map) {
    return RuleLockConfiguration(
      unlockDelay: RuleLockConfigurationUnlockDelay.fromMap(
          (map['unlockDelay'] as Map).cast<String, dynamic>()),
    );
  }
}
