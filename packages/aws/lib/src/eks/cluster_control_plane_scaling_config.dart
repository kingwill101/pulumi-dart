// ignore_for_file: unused_element, unnecessary_cast

class ClusterControlPlaneScalingConfig {
  /// The control plane scaling tier. Valid values are `standard`, `tier-xl`, `tier-2xl`, or `tier-4xl`. Defaults to `standard`. For more information about each tier, see [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html).
  final String? tier;

  /// Creates a new [ClusterControlPlaneScalingConfig].
  /// [tier] The control plane scaling tier. Valid values are `standard`, `tier-xl`, `tier-2xl`, or `tier-4xl`. Defaults to `standard`. For more information about each tier, see [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html).
  ClusterControlPlaneScalingConfig({this.tier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tier': ?tier};
  }

  factory ClusterControlPlaneScalingConfig.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneScalingConfig(
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}
