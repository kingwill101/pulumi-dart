// ignore_for_file: unused_element, unnecessary_cast

class ClusterRebalanceConfig {
  /// The rebalance behavior for the cluster. When not specified, defaults to `NO_REBALANCE`. Possible values: `MODE_UNSPECIFIED`, `NO_REBALANCE`, `AUTO_REBALANCE_ON_SCALE_UP`.
  final String? mode;

  /// Creates a new [ClusterRebalanceConfig].
  /// [mode] The rebalance behavior for the cluster. When not specified, defaults to `NO_REBALANCE`. Possible values: `MODE_UNSPECIFIED`, `NO_REBALANCE`, `AUTO_REBALANCE_ON_SCALE_UP`.
  ClusterRebalanceConfig({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    return map;
  }

  factory ClusterRebalanceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterRebalanceConfig(
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}
