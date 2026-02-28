// ignore_for_file: unused_element, unnecessary_cast

class ClusterGkeAutoUpgradeConfig {
  /// The selected patch mode.
  /// Accepted values are:
  /// * ACCELERATED: Upgrades to the latest available patch version in a given minor and release channel.
  final String patchMode;

  /// Creates a new [ClusterGkeAutoUpgradeConfig].
  /// [patchMode] The selected patch mode.
  ClusterGkeAutoUpgradeConfig({
    required this.patchMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['patchMode'] = patchMode;
    return map;
  }

  factory ClusterGkeAutoUpgradeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterGkeAutoUpgradeConfig(
      patchMode: map['patchMode'] as String,
    );
  }
}
