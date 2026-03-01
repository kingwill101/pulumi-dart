// ignore_for_file: unused_element, unnecessary_cast

class FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig {
  /// Determines the level of granularity that's included in the prefix. Valid values are `YEAR`, `MONTH`, `DAY`, `HOUR`, and `MINUTE`.
  final String? prefixFormat;

  /// Determines whether the destination file path includes either or both of the selected elements. Valid values are `EXECUTION_ID` and `SCHEMA_VERSION`
  final List<String>? prefixHierarchies;

  /// Determines the format of the prefix, and whether it applies to the file name, file path, or both. Valid values are `FILENAME`, `PATH`, and `PATH_AND_FILENAME`.
  final String? prefixType;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig].
  /// [prefixFormat] Determines the level of granularity that's included in the prefix. Valid values are `YEAR`, `MONTH`, `DAY`, `HOUR`, and `MINUTE`.
  /// [prefixHierarchies] Determines whether the destination file path includes either or both of the selected elements. Valid values are `EXECUTION_ID` and `SCHEMA_VERSION`
  /// [prefixType] Determines the format of the prefix, and whether it applies to the file name, file path, or both. Valid values are `FILENAME`, `PATH`, and `PATH_AND_FILENAME`.
  FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig({
    this.prefixFormat,
    this.prefixHierarchies,
    this.prefixType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefixFormat': ?prefixFormat,
      'prefixHierarchies': ?prefixHierarchies,
      'prefixType': ?prefixType,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig(
      prefixFormat: map['prefixFormat'] == null
          ? null
          : map['prefixFormat'] as String,
      prefixHierarchies: map['prefixHierarchies'] == null
          ? null
          : (map['prefixHierarchies'] as List).cast<String>(),
      prefixType: map['prefixType'] == null
          ? null
          : map['prefixType'] as String,
    );
  }
}
