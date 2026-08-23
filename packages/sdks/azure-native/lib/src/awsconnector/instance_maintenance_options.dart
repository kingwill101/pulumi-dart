// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_auto_recovery_state_enum_value.dart';

/// Definition of InstanceMaintenanceOptions
class InstanceMaintenanceOptions {
  /// &lt;p&gt;Provides information on the current automatic recovery behavior of your instance.&lt;/p&gt;
  final pulumi.Input<InstanceAutoRecoveryStateEnumValue>? autoRecovery;

  /// Creates a new [InstanceMaintenanceOptions].
  /// [autoRecovery] &lt;p&gt;Provides information on the current automatic recovery behavior of your instance.&lt;/p&gt;
  const InstanceMaintenanceOptions({
    this.autoRecovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRecovery': ?pulumi.Input.mapOptionalInputValue<InstanceAutoRecoveryStateEnumValue, Map<String, dynamic>>(autoRecovery, (value) => value.toMap()),
    };
  }

  factory InstanceMaintenanceOptions.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceOptions(
      autoRecovery: (() { final guardedValue = map['autoRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAutoRecoveryStateEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
