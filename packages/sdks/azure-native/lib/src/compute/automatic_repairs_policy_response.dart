// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the configuration parameters for automatic repairs on the virtual machine scale set.
class AutomaticRepairsPolicyResponse {
  /// Specifies whether automatic repairs should be enabled on the virtual machine scale set. The default value is false.
  final pulumi.Input<bool>? enabled;
  /// The amount of time for which automatic repairs are suspended due to a state change on VM. The grace time starts after the state change has completed. This helps avoid premature or accidental repairs. The time duration should be specified in ISO 8601 format. The minimum allowed grace period is 10 minutes (PT10M), which is also the default value. The maximum allowed grace period is 90 minutes (PT90M).
  final pulumi.Input<String>? gracePeriod;
  /// Type of repair action (replace, restart, reimage) that will be used for repairing unhealthy virtual machines in the scale set. Default value is replace.
  final pulumi.Input<String>? repairAction;

  /// Creates a new [AutomaticRepairsPolicyResponse].
  /// [enabled] Specifies whether automatic repairs should be enabled on the virtual machine scale set. The default value is false.
  /// [gracePeriod] The amount of time for which automatic repairs are suspended due to a state change on VM. The grace time starts after the state change has completed. This helps avoid premature or accidental repairs. The time duration should be specified in ISO 8601 format. The minimum allowed grace period is 10 minutes (PT10M), which is also the default value. The maximum allowed grace period is 90 minutes (PT90M).
  /// [repairAction] Type of repair action (replace, restart, reimage) that will be used for repairing unhealthy virtual machines in the scale set. Default value is replace.
  AutomaticRepairsPolicyResponse({
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

  factory AutomaticRepairsPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AutomaticRepairsPolicyResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      gracePeriod: map['gracePeriod'] == null ? null : (map['gracePeriod']! as String).input(),
      repairAction: map['repairAction'] == null ? null : (map['repairAction']! as String).input(),
    );
  }
}

