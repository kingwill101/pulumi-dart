// ignore_for_file: unused_element, unnecessary_cast


/// The configuration parameters used for performing automatic OS upgrade.
class AutomaticOSUpgradePolicyResponse {
  /// Whether OS image rollback feature should be disabled.
  final bool? disableAutomaticRollback;
  /// Indicates whether OS upgrades should automatically be applied to scale set instances in a rolling fashion when a newer version of the OS image becomes available. <br /><br /> If this is set to true for Windows based pools, [WindowsConfiguration.enableAutomaticUpdates](https://learn.microsoft.com/rest/api/batchmanagement/pool/create?tabs=HTTP#windowsconfiguration) cannot be set to true.
  final bool? enableAutomaticOSUpgrade;
  /// Defer OS upgrades on the TVMs if they are running tasks.
  final bool? osRollingUpgradeDeferral;
  /// Indicates whether rolling upgrade policy should be used during Auto OS Upgrade. Auto OS Upgrade will fallback to the default policy if no policy is defined on the VMSS.
  final bool? useRollingUpgradePolicy;

  /// Creates a new [AutomaticOSUpgradePolicyResponse].
  /// [disableAutomaticRollback] Whether OS image rollback feature should be disabled.
  /// [enableAutomaticOSUpgrade] Indicates whether OS upgrades should automatically be applied to scale set instances in a rolling fashion when a newer version of the OS image becomes available. <br /><br /> If this is set to true for Windows based pools, [WindowsConfiguration.enableAutomaticUpdates](https://learn.microsoft.com/rest/api/batchmanagement/pool/create?tabs=HTTP#windowsconfiguration) cannot be set to true.
  /// [osRollingUpgradeDeferral] Defer OS upgrades on the TVMs if they are running tasks.
  /// [useRollingUpgradePolicy] Indicates whether rolling upgrade policy should be used during Auto OS Upgrade. Auto OS Upgrade will fallback to the default policy if no policy is defined on the VMSS.
  AutomaticOSUpgradePolicyResponse({
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
      disableAutomaticRollback: map['disableAutomaticRollback'] == null ? null : map['disableAutomaticRollback'] as bool,
      enableAutomaticOSUpgrade: map['enableAutomaticOSUpgrade'] == null ? null : map['enableAutomaticOSUpgrade'] as bool,
      osRollingUpgradeDeferral: map['osRollingUpgradeDeferral'] == null ? null : map['osRollingUpgradeDeferral'] as bool,
      useRollingUpgradePolicy: map['useRollingUpgradePolicy'] == null ? null : map['useRollingUpgradePolicy'] as bool,
    );
  }
}

