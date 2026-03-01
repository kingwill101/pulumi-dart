// ignore_for_file: unused_element, unnecessary_cast


class NodePoolTeeConfig {
  /// Specifies whether to enable confidential computing for the cluster.
  final bool? teeEnable;

  /// Creates a new [NodePoolTeeConfig].
  /// [teeEnable] Specifies whether to enable confidential computing for the cluster.
  NodePoolTeeConfig({
    this.teeEnable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'teeEnable': ?teeEnable,
    };
  }

  factory NodePoolTeeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolTeeConfig(
      teeEnable: map['teeEnable'] == null ? null : map['teeEnable'] as bool,
    );
  }
}

