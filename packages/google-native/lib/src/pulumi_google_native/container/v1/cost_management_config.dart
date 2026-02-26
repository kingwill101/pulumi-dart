// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for fine-grained cost management feature.
class CostManagementConfig {
  /// Whether the feature is enabled or not.
  final bool? enabled;

  CostManagementConfig({
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

  factory CostManagementConfig.fromMap(Map<String, dynamic> map) {
    return CostManagementConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
