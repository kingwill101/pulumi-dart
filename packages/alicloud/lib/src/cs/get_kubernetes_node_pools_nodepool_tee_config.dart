// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesNodePoolsNodepoolTeeConfig {
  /// Specifies whether to enable confidential computing for the cluster.
  final bool teeEnable;

  /// Creates a new [GetKubernetesNodePoolsNodepoolTeeConfig].
  /// [teeEnable] Specifies whether to enable confidential computing for the cluster.
  GetKubernetesNodePoolsNodepoolTeeConfig({
    required this.teeEnable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'teeEnable': teeEnable,
    };
  }

  factory GetKubernetesNodePoolsNodepoolTeeConfig.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolTeeConfig(
      teeEnable: map['teeEnable'] as bool,
    );
  }
}

