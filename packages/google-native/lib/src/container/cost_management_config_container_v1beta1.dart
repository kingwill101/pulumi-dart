// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for fine-grained cost management feature.
class CostManagementConfigContainerV1beta1 {
  /// Whether the feature is enabled or not.
  final bool? enabled;

  /// Creates a new [CostManagementConfigContainerV1beta1].
  /// [enabled] Whether the feature is enabled or not.
  CostManagementConfigContainerV1beta1({
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

  factory CostManagementConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return CostManagementConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
