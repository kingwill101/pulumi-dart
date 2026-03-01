// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the configuration parameters for automatic repairs on the virtual machine scale set.
class AutomaticRepairsPolicy {
  /// Specifies whether automatic repairs should be enabled on the virtual machine scale set. The default value is false.
  final bool? enabled;
  /// The amount of time for which automatic repairs are suspended due to a state change on VM. The grace time starts after the state change has completed. This helps avoid premature or accidental repairs. The time duration should be specified in ISO 8601 format. The minimum allowed grace period is 10 minutes (PT10M), which is also the default value. The maximum allowed grace period is 90 minutes (PT90M).
  final String? gracePeriod;
  /// Type of repair action (replace, restart, reimage) that will be used for repairing unhealthy virtual machines in the scale set. Default value is replace.
  final String? repairAction;

  /// Creates a new [AutomaticRepairsPolicy].
  /// [enabled] Specifies whether automatic repairs should be enabled on the virtual machine scale set. The default value is false.
  /// [gracePeriod] The amount of time for which automatic repairs are suspended due to a state change on VM. The grace time starts after the state change has completed. This helps avoid premature or accidental repairs. The time duration should be specified in ISO 8601 format. The minimum allowed grace period is 10 minutes (PT10M), which is also the default value. The maximum allowed grace period is 90 minutes (PT90M).
  /// [repairAction] Type of repair action (replace, restart, reimage) that will be used for repairing unhealthy virtual machines in the scale set. Default value is replace.
  AutomaticRepairsPolicy({
    this.enabled,
    this.gracePeriod,
    this.repairAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'gracePeriod': ?gracePeriod,
      'repairAction': ?repairAction,
    };
  }

  factory AutomaticRepairsPolicy.fromMap(Map<String, dynamic> map) {
    return AutomaticRepairsPolicy(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      gracePeriod: map['gracePeriod'] == null ? null : map['gracePeriod'] as String,
      repairAction: map['repairAction'] == null ? null : map['repairAction'] as String,
    );
  }
}

