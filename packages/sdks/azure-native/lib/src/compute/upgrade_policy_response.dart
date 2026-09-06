// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_osupgrade_policy_response.dart';
import 'rolling_upgrade_policy_response.dart';

/// Describes an upgrade policy - automatic, manual, or rolling.
class UpgradePolicyResponse {
  /// Configuration parameters used for performing automatic OS Upgrade.
  final pulumi.Input<AutomaticOSUpgradePolicyResponse?>? automaticOSUpgradePolicy;
  /// Specifies the mode of an upgrade to virtual machines in the scale set.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.&lt;br /&gt;&lt;br /&gt; **Automatic** - All virtual machines in the scale set are  automatically updated at the same time.
  final pulumi.Input<String?>? mode;
  /// The configuration parameters used while performing a rolling upgrade.
  final pulumi.Input<RollingUpgradePolicyResponse?>? rollingUpgradePolicy;

  /// Creates a new [UpgradePolicyResponse].
  /// [automaticOSUpgradePolicy] Configuration parameters used for performing automatic OS Upgrade.
  /// [mode] Specifies the mode of an upgrade to virtual machines in the scale set.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.&lt;br /&gt;&lt;br /&gt; **Automatic** - All virtual machines in the scale set are  automatically updated at the same time.
  /// [rollingUpgradePolicy] The configuration parameters used while performing a rolling upgrade.
  const UpgradePolicyResponse({
    this.automaticOSUpgradePolicy,
    this.mode,
    this.rollingUpgradePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticOSUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<AutomaticOSUpgradePolicyResponse, Map<String, dynamic>>(automaticOSUpgradePolicy, (value) => value.toMap()),
      'mode': ?mode,
      'rollingUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<RollingUpgradePolicyResponse, Map<String, dynamic>>(rollingUpgradePolicy, (value) => value.toMap()),
    };
  }

  factory UpgradePolicyResponse.fromMap(Map<String, dynamic> map) {
    return UpgradePolicyResponse(
      automaticOSUpgradePolicy: (() { final guardedValue = map['automaticOSUpgradePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticOSUpgradePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rollingUpgradePolicy: (() { final guardedValue = map['rollingUpgradePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RollingUpgradePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
