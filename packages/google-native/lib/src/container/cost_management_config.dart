// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for fine-grained cost management feature.
class CostManagementConfig {
  /// Whether the feature is enabled or not.
  final bool? enabled;

  /// Creates a new [CostManagementConfig].
  /// [enabled] Whether the feature is enabled or not.
  CostManagementConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory CostManagementConfig.fromMap(Map<String, dynamic> map) {
    return CostManagementConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
