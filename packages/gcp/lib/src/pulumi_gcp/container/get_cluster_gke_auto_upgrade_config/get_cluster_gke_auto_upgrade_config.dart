// ignore_for_file: unused_element, unnecessary_cast

class GetClusterGkeAutoUpgradeConfig {
  /// The selected auto-upgrade patch type. Accepted values are:
  /// * ACCELERATED: Upgrades to the latest available patch version in a given minor and release channel.
  final String patchMode;

  GetClusterGkeAutoUpgradeConfig({
    required this.patchMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['patchMode'] = patchMode;
    return map;
  }

  factory GetClusterGkeAutoUpgradeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterGkeAutoUpgradeConfig(
      patchMode: map['patchMode'] as String,
    );
  }
}
