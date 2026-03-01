// ignore_for_file: unused_element, unnecessary_cast


/// The upgrade to apply to a ManagedCluster.
class ManagedClusterUpgradeSpecResponse {
  /// The Kubernetes version to upgrade the member clusters to.
  final String? kubernetesVersion;
  /// ManagedClusterUpgradeType is the type of upgrade to be applied.
  final String type;

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
      kubernetesVersion: map['kubernetesVersion'] == null ? null : map['kubernetesVersion'] as String,
      type: map['type'] as String,
    );
  }
}

