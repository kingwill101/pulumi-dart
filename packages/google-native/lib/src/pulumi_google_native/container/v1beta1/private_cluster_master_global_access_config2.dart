// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for controlling master global access settings.
class PrivateClusterMasterGlobalAccessConfig2 {
  /// Whenever master is accessible globally or not.
  final bool? enabled;

  PrivateClusterMasterGlobalAccessConfig2({
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

  factory PrivateClusterMasterGlobalAccessConfig2.fromMap(
      Map<String, dynamic> map) {
    return PrivateClusterMasterGlobalAccessConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
