// ignore_for_file: unused_element, unnecessary_cast

class AttachedClusterLoggingConfigComponentConfig {
  /// The components to be enabled.
  /// Each value may be one of: `SYSTEM_COMPONENTS`, `WORKLOADS`.
  final List<String>? enableComponents;

  AttachedClusterLoggingConfigComponentConfig({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableComponentsValue = enableComponents;
    if (enableComponentsValue != null) {
      map['enableComponents'] = enableComponentsValue;
    }
    return map;
  }

  factory AttachedClusterLoggingConfigComponentConfig.fromMap(
      Map<String, dynamic> map) {
    return AttachedClusterLoggingConfigComponentConfig(
      enableComponents: map['enableComponents'] == null
          ? null
          : (map['enableComponents'] as List).cast<String>(),
    );
  }
}
