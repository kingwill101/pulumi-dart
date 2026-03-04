// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The upgrade to apply to a ManagedCluster.
class ManagedClusterUpgradeSpecResponse {
  /// The Kubernetes version to upgrade the member clusters to.
  final pulumi.Input<String>? kubernetesVersion;

  /// ManagedClusterUpgradeType is the type of upgrade to be applied.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedClusterUpgradeSpecResponse].
  /// [kubernetesVersion] The Kubernetes version to upgrade the member clusters to.
  /// [type] ManagedClusterUpgradeType is the type of upgrade to be applied.
  ManagedClusterUpgradeSpecResponse({
    this.kubernetesVersion,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesVersion': ?kubernetesVersion,
      'type': type,
    };
  }

  factory ManagedClusterUpgradeSpecResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterUpgradeSpecResponse(
      kubernetesVersion: (() {
        final guardedValue = map['kubernetesVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
