// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_osupgrade_policy_response.dart';
import 'rolling_upgrade_policy_response.dart';

/// Describes an upgrade policy - automatic, manual, or rolling.
class UpgradePolicyResponse {
  /// The configuration parameters used for performing automatic OS upgrade.
  final pulumi.Input<AutomaticOSUpgradePolicyResponse>? automaticOSUpgradePolicy;
  /// Specifies the mode of an upgrade to virtual machines in the scale set.<br /><br /> Possible values are:<br /><br /> **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.<br /><br /> **Automatic** - All virtual machines in the scale set are automatically updated at the same time.<br /><br /> **Rolling** - Scale set performs updates in batches with an optional pause time in between.
  final pulumi.Input<String> mode;
  /// The configuration parameters used while performing a rolling upgrade.
  final pulumi.Input<RollingUpgradePolicyResponse>? rollingUpgradePolicy;

  /// Creates a new [UpgradePolicyResponse].
  /// [automaticOSUpgradePolicy] The configuration parameters used for performing automatic OS upgrade.
  /// [mode] Specifies the mode of an upgrade to virtual machines in the scale set.<br /><br /> Possible values are:<br /><br /> **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.<br /><br /> **Automatic** - All virtual machines in the scale set are automatically updated at the same time.<br /><br /> **Rolling** - Scale set performs updates in batches with an optional pause time in between.
  /// [rollingUpgradePolicy] The configuration parameters used while performing a rolling upgrade.
  UpgradePolicyResponse({
    this.automaticOSUpgradePolicy,
    required this.mode,
    this.rollingUpgradePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticOSUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<AutomaticOSUpgradePolicyResponse, Map<String, dynamic>>(automaticOSUpgradePolicy, (value) => value.toMap()),
      'mode': mode,
      'rollingUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<RollingUpgradePolicyResponse, Map<String, dynamic>>(rollingUpgradePolicy, (value) => value.toMap()),
    };
  }

  factory UpgradePolicyResponse.fromMap(Map<String, dynamic> map) {
    return UpgradePolicyResponse(
      automaticOSUpgradePolicy: map['automaticOSUpgradePolicy'] == null ? null : (AutomaticOSUpgradePolicyResponse.fromMap((map['automaticOSUpgradePolicy']! as Map).cast<String, dynamic>())).input(),
      mode: (map['mode'] as String).input(),
      rollingUpgradePolicy: map['rollingUpgradePolicy'] == null ? null : (RollingUpgradePolicyResponse.fromMap((map['rollingUpgradePolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

