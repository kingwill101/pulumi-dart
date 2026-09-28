// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderManagedInstancesProviderAutoRepairConfiguration {
  /// Whether to use Amazon ECS managed auto repair. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String?>? actionsStatus;

  /// Creates a new [CapacityProviderManagedInstancesProviderAutoRepairConfiguration].
  /// [actionsStatus] Whether to use Amazon ECS managed auto repair. Valid values are `ENABLED` and `DISABLED`.
  const CapacityProviderManagedInstancesProviderAutoRepairConfiguration({
    this.actionsStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsStatus': ?actionsStatus,
    };
  }

  factory CapacityProviderManagedInstancesProviderAutoRepairConfiguration.fromMap(Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderAutoRepairConfiguration(
      actionsStatus: (() { final guardedValue = map['actionsStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
