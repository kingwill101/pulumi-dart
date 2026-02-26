// ignore_for_file: unused_element, unnecessary_cast

class ClusterControlPlaneScalingConfig {
  /// The control plane scaling tier. Valid values are <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, `tier-xl`, `tier-2xl`, or `tier-4xl`. Defaults to <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>. For more information about each tier, see [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html).
  final String? tier;

  ClusterControlPlaneScalingConfig({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = tierValue;
    }
    return map;
  }

  factory ClusterControlPlaneScalingConfig.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneScalingConfig(
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}
