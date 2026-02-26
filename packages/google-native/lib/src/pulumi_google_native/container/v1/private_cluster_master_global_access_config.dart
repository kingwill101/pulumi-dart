// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for controlling master global access settings.
class PrivateClusterMasterGlobalAccessConfig {
  /// Whenever master is accessible globally or not.
  final bool? enabled;

  PrivateClusterMasterGlobalAccessConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory PrivateClusterMasterGlobalAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return PrivateClusterMasterGlobalAccessConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
