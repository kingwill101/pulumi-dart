// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for fine-grained cost management feature.
class CostManagementConfigResponse2 {
  /// Whether the feature is enabled or not.
  final bool enabled;

  CostManagementConfigResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory CostManagementConfigResponse2.fromMap(Map<String, dynamic> map) {
    return CostManagementConfigResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
