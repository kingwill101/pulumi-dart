// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration parameters used for performing automatic OS upgrade.
class AutomaticOSUpgradePolicy {
  /// Whether OS image rollback feature should be disabled. Default value is false.
  final pulumi.Input<bool>? disableAutomaticRollback;
  /// Indicates whether OS upgrades should automatically be applied to scale set instances in a rolling fashion when a newer version of the OS image becomes available. Default value is false. If this is set to true for Windows based scale sets, [enableAutomaticUpdates](https://docs.microsoft.com/dotnet/api/microsoft.azure.management.compute.models.windowsconfiguration.enableautomaticupdates?view=azure-dotnet) is automatically set to false and cannot be set to true.
  final pulumi.Input<bool>? enableAutomaticOSUpgrade;
  /// Indicates whether Auto OS Upgrade should undergo deferral. Deferred OS upgrades will send advanced notifications on a per-VM basis that an OS upgrade from rolling upgrades is incoming, via the IMDS tag 'Platform.PendingOSUpgrade'. The upgrade then defers until the upgrade is approved via an ApproveRollingUpgrade call.
  final pulumi.Input<bool>? osRollingUpgradeDeferral;
  /// Indicates whether rolling upgrade policy should be used during Auto OS Upgrade. Default value is false. Auto OS Upgrade will fallback to the default policy if no policy is defined on the VMSS.
  final pulumi.Input<bool>? useRollingUpgradePolicy;

  /// Creates a new [AutomaticOSUpgradePolicy].
  /// [disableAutomaticRollback] Whether OS image rollback feature should be disabled. Default value is false.
  /// [enableAutomaticOSUpgrade] Indicates whether OS upgrades should automatically be applied to scale set instances in a rolling fashion when a newer version of the OS image becomes available. Default value is false. If this is set to true for Windows based scale sets, [enableAutomaticUpdates](https://docs.microsoft.com/dotnet/api/microsoft.azure.management.compute.models.windowsconfiguration.enableautomaticupdates?view=azure-dotnet) is automatically set to false and cannot be set to true.
  /// [osRollingUpgradeDeferral] Indicates whether Auto OS Upgrade should undergo deferral. Deferred OS upgrades will send advanced notifications on a per-VM basis that an OS upgrade from rolling upgrades is incoming, via the IMDS tag 'Platform.PendingOSUpgrade'. The upgrade then defers until the upgrade is approved via an ApproveRollingUpgrade call.
  /// [useRollingUpgradePolicy] Indicates whether rolling upgrade policy should be used during Auto OS Upgrade. Default value is false. Auto OS Upgrade will fallback to the default policy if no policy is defined on the VMSS.
  AutomaticOSUpgradePolicy({
    this.disableAutomaticRollback,
    this.enableAutomaticOSUpgrade,
    this.osRollingUpgradeDeferral,
    this.useRollingUpgradePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableAutomaticRollback': ?disableAutomaticRollback,
      'enableAutomaticOSUpgrade': ?enableAutomaticOSUpgrade,
      'osRollingUpgradeDeferral': ?osRollingUpgradeDeferral,
      'useRollingUpgradePolicy': ?useRollingUpgradePolicy,
    };
  }

  factory AutomaticOSUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return AutomaticOSUpgradePolicy(
      disableAutomaticRollback: (() { final guardedValue = map['disableAutomaticRollback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableAutomaticOSUpgrade: (() { final guardedValue = map['enableAutomaticOSUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      osRollingUpgradeDeferral: (() { final guardedValue = map['osRollingUpgradeDeferral']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useRollingUpgradePolicy: (() { final guardedValue = map['useRollingUpgradePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

