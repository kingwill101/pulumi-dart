// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigHorizontalPodAutoscaling {
  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled.When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic
  ///
  /// <a name="nested_cluster_telemetry"></a>The `cluster_telemetry` block supports
  final bool disabled;

  /// Creates a new [ClusterAddonsConfigHorizontalPodAutoscaling].
  /// [disabled] Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled.When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic
  ClusterAddonsConfigHorizontalPodAutoscaling({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory ClusterAddonsConfigHorizontalPodAutoscaling.fromMap(
      Map<String, dynamic> map) {
    return ClusterAddonsConfigHorizontalPodAutoscaling(
      disabled: map['disabled'] as bool,
    );
  }
}
