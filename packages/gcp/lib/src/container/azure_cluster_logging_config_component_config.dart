// ignore_for_file: unused_element, unnecessary_cast

class AzureClusterLoggingConfigComponentConfig {
  /// Components of the logging configuration to be enabled.
  final List<String>? enableComponents;

  /// Creates a new [AzureClusterLoggingConfigComponentConfig].
  /// [enableComponents] Components of the logging configuration to be enabled.
  AzureClusterLoggingConfigComponentConfig({this.enableComponents});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableComponents': ?enableComponents};
  }

  factory AzureClusterLoggingConfigComponentConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureClusterLoggingConfigComponentConfig(
      enableComponents: map['enableComponents'] == null
          ? null
          : (map['enableComponents'] as List).cast<String>(),
    );
  }
}
