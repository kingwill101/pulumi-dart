// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The upgrade to apply to a ManagedCluster.
class ManagedClusterUpgradeSpec {
  /// The Kubernetes version to upgrade the member clusters to.
  final pulumi.Input<String>? kubernetesVersion;
  /// ManagedClusterUpgradeType is the type of upgrade to be applied.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedClusterUpgradeSpec].
  /// [kubernetesVersion] The Kubernetes version to upgrade the member clusters to.
  /// [type] ManagedClusterUpgradeType is the type of upgrade to be applied.
  ManagedClusterUpgradeSpec({
    this.kubernetesVersion,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesVersion': ?kubernetesVersion,
      'type': type,
    };
  }

  factory ManagedClusterUpgradeSpec.fromMap(Map<String, dynamic> map) {
    return ManagedClusterUpgradeSpec(
      kubernetesVersion: map['kubernetesVersion'] == null ? null : (map['kubernetesVersion']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

