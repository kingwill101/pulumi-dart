// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration parameters used for performing automatic OS upgrade.
class AutomaticOSUpgradePolicyResponse {
  /// Whether OS image rollback feature should be disabled.
  final pulumi.Input<bool>? disableAutomaticRollback;
  /// Indicates whether OS upgrades should automatically be applied to scale set instances in a rolling fashion when a newer version of the OS image becomes available. &lt;br /&gt;&lt;br /&gt; If this is set to true for Windows based pools, [WindowsConfiguration.enableAutomaticUpdates](https://learn.microsoft.com/rest/api/batchmanagement/pool/create?tabs=HTTP#windowsconfiguration) cannot be set to true.
  final pulumi.Input<bool>? enableAutomaticOSUpgrade;
  /// Defer OS upgrades on the TVMs if they are running tasks.
  final pulumi.Input<bool>? osRollingUpgradeDeferral;
  /// Indicates whether rolling upgrade policy should be used during Auto OS Upgrade. Auto OS Upgrade will fallback to the default policy if no policy is defined on the VMSS.
  final pulumi.Input<bool>? useRollingUpgradePolicy;

  /// Creates a new [AutomaticOSUpgradePolicyResponse].
  /// [disableAutomaticRollback] Whether OS image rollback feature should be disabled.
  /// [enableAutomaticOSUpgrade] Indicates whether OS upgrades should automatically be applied to scale set instances in a rolling fashion when a newer version of the OS image becomes available. &lt;br /&gt;&lt;br /&gt; If this is set to true for Windows based pools, [WindowsConfiguration.enableAutomaticUpdates](https://learn.microsoft.com/rest/api/batchmanagement/pool/create?tabs=HTTP#windowsconfiguration) cannot be set to true.
  /// [osRollingUpgradeDeferral] Defer OS upgrades on the TVMs if they are running tasks.
  /// [useRollingUpgradePolicy] Indicates whether rolling upgrade policy should be used during Auto OS Upgrade. Auto OS Upgrade will fallback to the default policy if no policy is defined on the VMSS.
  const AutomaticOSUpgradePolicyResponse({
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

  factory AutomaticOSUpgradePolicyResponse.fromMap(Map<String, dynamic> map) {
    return AutomaticOSUpgradePolicyResponse(
      disableAutomaticRollback: (() { final guardedValue = map['disableAutomaticRollback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableAutomaticOSUpgrade: (() { final guardedValue = map['enableAutomaticOSUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      osRollingUpgradeDeferral: (() { final guardedValue = map['osRollingUpgradeDeferral']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useRollingUpgradePolicy: (() { final guardedValue = map['useRollingUpgradePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
