// ignore_for_file: unused_element, unnecessary_cast

class GetClusterControlPlaneScalingConfig {
  /// The control plane scaling tier. Valid values are <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, `tier-xl`, `tier-2xl`, or `tier-4xl`.
  final String tier;

  GetClusterControlPlaneScalingConfig({
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tier'] = tier;
    return map;
  }

  factory GetClusterControlPlaneScalingConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterControlPlaneScalingConfig(
      tier: map['tier'] as String,
    );
  }
}
