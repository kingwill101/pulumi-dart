// ignore_for_file: unused_element, unnecessary_cast


class AttachedClusterLoggingConfigComponentConfig {
  /// The components to be enabled.
  /// Each value may be one of: `SYSTEM_COMPONENTS`, `WORKLOADS`.
  final List<String>? enableComponents;

  /// Creates a new [AttachedClusterLoggingConfigComponentConfig].
  /// [enableComponents] The components to be enabled.
  AttachedClusterLoggingConfigComponentConfig({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': ?enableComponents,
    };
  }

  factory AttachedClusterLoggingConfigComponentConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterLoggingConfigComponentConfig(
      enableComponents: map['enableComponents'] == null ? null : (map['enableComponents'] as List).cast<String>(),
    );
  }
}

