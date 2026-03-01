// ignore_for_file: unused_element, unnecessary_cast

class GetClusterControlPlaneScalingConfig {
  /// The control plane scaling tier. Valid values are `standard`, `tier-xl`, `tier-2xl`, or `tier-4xl`.
  final String tier;

  /// Creates a new [GetClusterControlPlaneScalingConfig].
  /// [tier] The control plane scaling tier. Valid values are `standard`, `tier-xl`, `tier-2xl`, or `tier-4xl`.
  GetClusterControlPlaneScalingConfig({required this.tier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tier': tier};
  }

  factory GetClusterControlPlaneScalingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterControlPlaneScalingConfig(tier: map['tier'] as String);
  }
}
