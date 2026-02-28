// ignore_for_file: unused_element, unnecessary_cast


class AwsClusterLoggingConfigComponentConfig {
  /// Components of the logging configuration to be enabled.
  final List<String>? enableComponents;

  /// Creates a new [AwsClusterLoggingConfigComponentConfig].
  /// [enableComponents] Components of the logging configuration to be enabled.
  AwsClusterLoggingConfigComponentConfig({
    this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': ?enableComponents,
    };
  }

  factory AwsClusterLoggingConfigComponentConfig.fromMap(Map<String, dynamic> map) {
    return AwsClusterLoggingConfigComponentConfig(
      enableComponents: map['enableComponents'] == null ? null : (map['enableComponents'] as List).cast<String>(),
    );
  }
}

