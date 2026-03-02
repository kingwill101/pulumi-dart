// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_osupgrade_policy.dart';
import 'rolling_upgrade_policy.dart';
import 'upgrade_mode.dart';

/// Describes an upgrade policy - automatic, manual, or rolling.
class UpgradePolicy {
  /// Configuration parameters used for performing automatic OS Upgrade.
  final pulumi.Input<AutomaticOSUpgradePolicy>? automaticOSUpgradePolicy;
  /// Specifies the mode of an upgrade to virtual machines in the scale set.<br /><br /> Possible values are:<br /><br /> **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.<br /><br /> **Automatic** - All virtual machines in the scale set are  automatically updated at the same time.
  final pulumi.Input<UpgradeMode>? mode;
  /// The configuration parameters used while performing a rolling upgrade.
  final pulumi.Input<RollingUpgradePolicy>? rollingUpgradePolicy;

  /// Creates a new [UpgradePolicy].
  /// [automaticOSUpgradePolicy] Configuration parameters used for performing automatic OS Upgrade.
  /// [mode] Specifies the mode of an upgrade to virtual machines in the scale set.<br /><br /> Possible values are:<br /><br /> **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.<br /><br /> **Automatic** - All virtual machines in the scale set are  automatically updated at the same time.
  /// [rollingUpgradePolicy] The configuration parameters used while performing a rolling upgrade.
  UpgradePolicy({
    this.automaticOSUpgradePolicy,
    this.mode,
    this.rollingUpgradePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticOSUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<AutomaticOSUpgradePolicy, Map<String, dynamic>>(automaticOSUpgradePolicy, (value) => value.toMap()),
      'mode': ?pulumi.Input.mapOptionalInputValue<UpgradeMode, String>(mode, (value) => value.value),
      'rollingUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<RollingUpgradePolicy, Map<String, dynamic>>(rollingUpgradePolicy, (value) => value.toMap()),
    };
  }

  factory UpgradePolicy.fromMap(Map<String, dynamic> map) {
    return UpgradePolicy(
      automaticOSUpgradePolicy: map['automaticOSUpgradePolicy'] == null ? null : (AutomaticOSUpgradePolicy.fromMap((map['automaticOSUpgradePolicy']! as Map).cast<String, dynamic>())).input(),
      mode: map['mode'] == null ? null : (UpgradeMode.fromValue(map['mode']! as String)).input(),
      rollingUpgradePolicy: map['rollingUpgradePolicy'] == null ? null : (RollingUpgradePolicy.fromMap((map['rollingUpgradePolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

