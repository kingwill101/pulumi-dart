// ignore_for_file: unused_element, unnecessary_cast

import 'rule_lock_configuration_unlock_delay.dart';

class RuleLockConfiguration {
  /// Information about the retention rule unlock delay. See `unlock_delay` below.
  final RuleLockConfigurationUnlockDelay unlockDelay;

  /// Creates a new [RuleLockConfiguration].
  /// [unlockDelay] Information about the retention rule unlock delay. See `unlock_delay` below.
  RuleLockConfiguration({required this.unlockDelay});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unlockDelay': unlockDelay.toMap()};
  }

  factory RuleLockConfiguration.fromMap(Map<String, dynamic> map) {
    return RuleLockConfiguration(
      unlockDelay: RuleLockConfigurationUnlockDelay.fromMap(
        (map['unlockDelay'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
