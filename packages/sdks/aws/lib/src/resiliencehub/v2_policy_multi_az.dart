// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyMultiAz {
  /// Multi-AZ disaster recovery approach. Valid values: `ACTIVE_ACTIVE`, `HOT_STANDBY`, `WARM_STANDBY`, `PILOT_LIGHT`, `BACKUP_AND_RESTORE`.
  final pulumi.Input<String> disasterRecoveryApproach;
  /// Recovery point objective in minutes.
  final pulumi.Input<int?>? rpoInMinutes;
  /// Recovery time objective in minutes.
  final pulumi.Input<int?>? rtoInMinutes;

  /// Creates a new [V2PolicyMultiAz].
  /// [disasterRecoveryApproach] Multi-AZ disaster recovery approach. Valid values: `ACTIVE_ACTIVE`, `HOT_STANDBY`, `WARM_STANDBY`, `PILOT_LIGHT`, `BACKUP_AND_RESTORE`.
  /// [rpoInMinutes] Recovery point objective in minutes.
  /// [rtoInMinutes] Recovery time objective in minutes.
  const V2PolicyMultiAz({
    required this.disasterRecoveryApproach,
    this.rpoInMinutes,
    this.rtoInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disasterRecoveryApproach': disasterRecoveryApproach,
      'rpoInMinutes': ?rpoInMinutes,
      'rtoInMinutes': ?rtoInMinutes,
    };
  }

  factory V2PolicyMultiAz.fromMap(Map<String, dynamic> map) {
    return V2PolicyMultiAz(
      disasterRecoveryApproach: pulumi.Input.fromValue(map['disasterRecoveryApproach'] as String),
      rpoInMinutes: (() { final guardedValue = map['rpoInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      rtoInMinutes: (() { final guardedValue = map['rtoInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
