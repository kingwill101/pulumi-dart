// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterControlPlaneScalingConfig {
  /// The control plane scaling tier. Valid values are `standard`, `tier-xl`, `tier-2xl`, or `tier-4xl`. Defaults to `standard`. For more information about each tier, see [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html).
  final pulumi.Input<String>? tier;

  /// Creates a new [ClusterControlPlaneScalingConfig].
  /// [tier] The control plane scaling tier. Valid values are `standard`, `tier-xl`, `tier-2xl`, or `tier-4xl`. Defaults to `standard`. For more information about each tier, see [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html).
  const ClusterControlPlaneScalingConfig({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory ClusterControlPlaneScalingConfig.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneScalingConfig(
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

