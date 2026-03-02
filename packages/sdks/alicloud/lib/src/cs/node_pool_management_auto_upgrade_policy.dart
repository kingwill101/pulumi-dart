// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolManagementAutoUpgradePolicy {
  /// Specifies whether  to automatically update the kubelet. Valid values: `true`: yes; `false`: no.
  final pulumi.Input<bool>? autoUpgradeKubelet;

  /// Creates a new [NodePoolManagementAutoUpgradePolicy].
  /// [autoUpgradeKubelet] Specifies whether  to automatically update the kubelet. Valid values: `true`: yes; `false`: no.
  NodePoolManagementAutoUpgradePolicy({
    this.autoUpgradeKubelet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeKubelet': ?autoUpgradeKubelet,
    };
  }

  factory NodePoolManagementAutoUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return NodePoolManagementAutoUpgradePolicy(
      autoUpgradeKubelet: map['autoUpgradeKubelet'] == null ? null : (map['autoUpgradeKubelet']! as bool).input(),
    );
  }
}

