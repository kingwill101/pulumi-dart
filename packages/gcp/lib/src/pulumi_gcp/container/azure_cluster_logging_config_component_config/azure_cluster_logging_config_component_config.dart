// ignore_for_file: unused_element, unnecessary_cast

class AzureClusterLoggingConfigComponentConfig {
  /// Components of the logging configuration to be enabled.
  final List<String>? enableComponents;

  AzureClusterLoggingConfigComponentConfig({
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

  factory AzureClusterLoggingConfigComponentConfig.fromMap(
      Map<String, dynamic> map) {
    return AzureClusterLoggingConfigComponentConfig(
      enableComponents: map['enableComponents'] == null
          ? null
          : (map['enableComponents'] as List).cast<String>(),
    );
  }
}
