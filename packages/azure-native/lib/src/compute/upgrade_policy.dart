// ignore_for_file: unused_element, unnecessary_cast

import 'automatic_osupgrade_policy.dart';
import 'rolling_upgrade_policy.dart';
import 'upgrade_mode.dart';

/// Describes an upgrade policy - automatic, manual, or rolling.
class UpgradePolicy {
  /// Configuration parameters used for performing automatic OS Upgrade.
  final AutomaticOSUpgradePolicy? automaticOSUpgradePolicy;
  /// Specifies the mode of an upgrade to virtual machines in the scale set.<br /><br /> Possible values are:<br /><br /> **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.<br /><br /> **Automatic** - All virtual machines in the scale set are  automatically updated at the same time.
  final UpgradeMode? mode;
  /// The configuration parameters used while performing a rolling upgrade.
  final RollingUpgradePolicy? rollingUpgradePolicy;

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
      'automaticOSUpgradePolicy': ?automaticOSUpgradePolicy == null ? null : automaticOSUpgradePolicy!.toMap(),
      'mode': ?mode == null ? null : mode!.value,
      'rollingUpgradePolicy': ?rollingUpgradePolicy == null ? null : rollingUpgradePolicy!.toMap(),
    };
  }

  factory UpgradePolicy.fromMap(Map<String, dynamic> map) {
    return UpgradePolicy(
      automaticOSUpgradePolicy: map['automaticOSUpgradePolicy'] == null ? null : AutomaticOSUpgradePolicy.fromMap((map['automaticOSUpgradePolicy'] as Map).cast<String, dynamic>()),
      mode: map['mode'] == null ? null : UpgradeMode.fromValue(map['mode'] as String),
      rollingUpgradePolicy: map['rollingUpgradePolicy'] == null ? null : RollingUpgradePolicy.fromMap((map['rollingUpgradePolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

