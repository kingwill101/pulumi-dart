// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedKubernetesUpgradePolicy {
  /// Whether to upgrade only the control plane without upgrading worker nodes. Valid values: `true`, `false`. When set to `true`, only the cluster control plane components will be upgraded, and worker nodes will remain at their current version. Default is `false`.
  ///
  /// for example:
  /// ```
  /// # Upgrade cluster version with control plane only
  /// version = "1.32.1-aliyun.1"
  ///
  /// upgrade_policy {
  /// control_plane_only = true
  /// }
  /// ```
  ///
  /// > **NOTE:** After the upgrade completes, you may remove the `upgrade_policy` block from your configuration to prevent unintended re-upgrades on subsequent applies.
  final pulumi.Input<bool>? controlPlaneOnly;

  /// Creates a new [ManagedKubernetesUpgradePolicy].
  /// [controlPlaneOnly] Whether to upgrade only the control plane without upgrading worker nodes. Valid values: `true`, `false`. When set to `true`, only the cluster control plane components will be upgraded, and worker nodes will remain at their current version. Default is `false`.
  ManagedKubernetesUpgradePolicy({
    this.controlPlaneOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneOnly': ?controlPlaneOnly,
    };
  }

  factory ManagedKubernetesUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return ManagedKubernetesUpgradePolicy(
      controlPlaneOnly: map['controlPlaneOnly'] == null ? null : (map['controlPlaneOnly'] as bool).input(),
    );
  }
}

