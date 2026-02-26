// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for fine-grained cost management feature.
class CostManagementConfig2 {
  /// Whether the feature is enabled or not.
  final bool? enabled;

  CostManagementConfig2({
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

  factory CostManagementConfig2.fromMap(Map<String, dynamic> map) {
    return CostManagementConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
