// ignore_for_file: unused_element, unnecessary_cast

import 'instance_auto_recovery_state_enum_value.dart';

/// Definition of InstanceMaintenanceOptions
class InstanceMaintenanceOptions {
  /// <p>Provides information on the current automatic recovery behavior of your instance.</p>
  final InstanceAutoRecoveryStateEnumValue? autoRecovery;

  /// Creates a new [InstanceMaintenanceOptions].
  /// [autoRecovery] <p>Provides information on the current automatic recovery behavior of your instance.</p>
  InstanceMaintenanceOptions({
    this.autoRecovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRecovery': ?autoRecovery == null ? null : autoRecovery!.toMap(),
    };
  }

  factory InstanceMaintenanceOptions.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceOptions(
      autoRecovery: map['autoRecovery'] == null ? null : InstanceAutoRecoveryStateEnumValue.fromMap((map['autoRecovery'] as Map).cast<String, dynamic>()),
    );
  }
}

