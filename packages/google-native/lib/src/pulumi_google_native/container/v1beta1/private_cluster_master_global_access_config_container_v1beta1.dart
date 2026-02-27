// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for controlling master global access settings.
class PrivateClusterMasterGlobalAccessConfigContainerV1beta1 {
  /// Whenever master is accessible globally or not.
  final bool? enabled;

  PrivateClusterMasterGlobalAccessConfigContainerV1beta1({
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

  factory PrivateClusterMasterGlobalAccessConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return PrivateClusterMasterGlobalAccessConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
