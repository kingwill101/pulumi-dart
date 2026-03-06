// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_osupgrade_policy.dart';
import 'rolling_upgrade_policy.dart';
import 'upgrade_mode.dart';

/// Describes an upgrade policy - automatic, manual, or rolling.
class UpgradePolicy {
  /// The configuration parameters used for performing automatic OS upgrade.
  final pulumi.Input<AutomaticOSUpgradePolicy>? automaticOSUpgradePolicy;
  /// Specifies the mode of an upgrade to virtual machines in the scale set.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.&lt;br /&gt;&lt;br /&gt; **Automatic** - All virtual machines in the scale set are automatically updated at the same time.&lt;br /&gt;&lt;br /&gt; **Rolling** - Scale set performs updates in batches with an optional pause time in between.
  final pulumi.Input<UpgradeMode> mode;
  /// The configuration parameters used while performing a rolling upgrade.
  final pulumi.Input<RollingUpgradePolicy>? rollingUpgradePolicy;

  /// Creates a new [UpgradePolicy].
  /// [automaticOSUpgradePolicy] The configuration parameters used for performing automatic OS upgrade.
  /// [mode] Specifies the mode of an upgrade to virtual machines in the scale set.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.&lt;br /&gt;&lt;br /&gt; **Automatic** - All virtual machines in the scale set are automatically updated at the same time.&lt;br /&gt;&lt;br /&gt; **Rolling** - Scale set performs updates in batches with an optional pause time in between.
  /// [rollingUpgradePolicy] The configuration parameters used while performing a rolling upgrade.
  const UpgradePolicy({
    this.automaticOSUpgradePolicy,
    required this.mode,
    this.rollingUpgradePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticOSUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<AutomaticOSUpgradePolicy, Map<String, dynamic>>(automaticOSUpgradePolicy, (value) => value.toMap()),
      'mode': pulumi.Input.mapInputValue<UpgradeMode, String>(mode, (value) => value.wireValue),
      'rollingUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<RollingUpgradePolicy, Map<String, dynamic>>(rollingUpgradePolicy, (value) => value.toMap()),
    };
  }

  factory UpgradePolicy.fromMap(Map<String, dynamic> map) {
    return UpgradePolicy(
      automaticOSUpgradePolicy: (() { final guardedValue = map['automaticOSUpgradePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticOSUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: pulumi.Input.fromValue(UpgradeMode.fromValue(map['mode']! as String)),
      rollingUpgradePolicy: (() { final guardedValue = map['rollingUpgradePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

