// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig {
  /// Determines the level of granularity that's included in the prefix. Valid values are `YEAR`, `MONTH`, `DAY`, `HOUR`, and `MINUTE`.
  final pulumi.Input<String>? prefixFormat;
  /// Determines whether the destination file path includes either or both of the selected elements. Valid values are `EXECUTION_ID` and `SCHEMA_VERSION`
  final pulumi.Input<List<String>>? prefixHierarchies;
  /// Determines the format of the prefix, and whether it applies to the file name, file path, or both. Valid values are `FILENAME`, `PATH`, and `PATH_AND_FILENAME`.
  final pulumi.Input<String> prefixType;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig].
  /// [prefixFormat] Determines the level of granularity that's included in the prefix. Valid values are `YEAR`, `MONTH`, `DAY`, `HOUR`, and `MINUTE`.
  /// [prefixHierarchies] Determines whether the destination file path includes either or both of the selected elements. Valid values are `EXECUTION_ID` and `SCHEMA_VERSION`
  /// [prefixType] Determines the format of the prefix, and whether it applies to the file name, file path, or both. Valid values are `FILENAME`, `PATH`, and `PATH_AND_FILENAME`.
  FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig({
    this.prefixFormat,
    this.prefixHierarchies,
    required this.prefixType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefixFormat': ?prefixFormat,
      'prefixHierarchies': ?prefixHierarchies,
      'prefixType': prefixType,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig(
      prefixFormat: map['prefixFormat'] == null ? null : (map['prefixFormat'] as String).input(),
      prefixHierarchies: map['prefixHierarchies'] == null ? null : ((map['prefixHierarchies'] as List).cast<String>()).input(),
      prefixType: (map['prefixType'] as String).input(),
    );
  }
}

