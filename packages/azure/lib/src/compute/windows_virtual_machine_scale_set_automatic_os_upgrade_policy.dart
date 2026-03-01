// ignore_for_file: unused_element, unnecessary_cast


class WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy {
  /// Should automatic rollbacks be disabled?
  final bool disableAutomaticRollback;
  /// Should OS Upgrades automatically be applied to Scale Set instances in a rolling fashion when a newer version of the OS Image becomes available?
  final bool enableAutomaticOsUpgrade;

  /// Creates a new [WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy].
  /// [disableAutomaticRollback] Should automatic rollbacks be disabled?
  /// [enableAutomaticOsUpgrade] Should OS Upgrades automatically be applied to Scale Set instances in a rolling fashion when a newer version of the OS Image becomes available?
  WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy({
    required this.disableAutomaticRollback,
    required this.enableAutomaticOsUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableAutomaticRollback': disableAutomaticRollback,
      'enableAutomaticOsUpgrade': enableAutomaticOsUpgrade,
    };
  }

  factory WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy(
      disableAutomaticRollback: map['disableAutomaticRollback'] as bool,
      enableAutomaticOsUpgrade: map['enableAutomaticOsUpgrade'] as bool,
    );
  }
}

