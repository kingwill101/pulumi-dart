// ignore_for_file: unused_element, unnecessary_cast

class AwsClusterLoggingConfigComponentConfig {
  /// Components of the logging configuration to be enabled.
  final List<String>? enableComponents;

  AwsClusterLoggingConfigComponentConfig({
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

  factory AwsClusterLoggingConfigComponentConfig.fromMap(
      Map<String, dynamic> map) {
    return AwsClusterLoggingConfigComponentConfig(
      enableComponents: map['enableComponents'] == null
          ? null
          : (map['enableComponents'] as List).cast<String>(),
    );
  }
}
