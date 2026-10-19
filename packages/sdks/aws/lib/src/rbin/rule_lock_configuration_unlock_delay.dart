// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleLockConfigurationUnlockDelay {
  /// Unit of time in which to measure the unlock delay. Currently, the unlock delay can be measure only in days.
  final pulumi.Input<String> unlockDelayUnit;
  /// Unlock delay period, measured in the unit specified for UnlockDelayUnit.
  final pulumi.Input<int> unlockDelayValue;

  /// Creates a new [RuleLockConfigurationUnlockDelay].
  /// [unlockDelayUnit] Unit of time in which to measure the unlock delay. Currently, the unlock delay can be measure only in days.
  /// [unlockDelayValue] Unlock delay period, measured in the unit specified for UnlockDelayUnit.
  const RuleLockConfigurationUnlockDelay({
    required this.unlockDelayUnit,
    required this.unlockDelayValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unlockDelayUnit': unlockDelayUnit,
      'unlockDelayValue': unlockDelayValue,
    };
  }

  factory RuleLockConfigurationUnlockDelay.fromMap(Map<String, dynamic> map) {
    return RuleLockConfigurationUnlockDelay(
      unlockDelayUnit: pulumi.Input.fromValue(map['unlockDelayUnit'] as String),
      unlockDelayValue: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['unlockDelayValue'])),
    );
  }
}
