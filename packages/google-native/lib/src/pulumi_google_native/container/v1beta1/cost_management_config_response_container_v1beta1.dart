// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for fine-grained cost management feature.
class CostManagementConfigResponseContainerV1beta1 {
  /// Whether the feature is enabled or not.
  final bool enabled;

  CostManagementConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory CostManagementConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return CostManagementConfigResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
