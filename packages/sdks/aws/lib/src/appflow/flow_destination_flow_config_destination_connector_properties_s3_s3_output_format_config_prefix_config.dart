// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig {
  /// Level of granularity included in the prefix. Valid values are `YEAR`, `MONTH`, `DAY`, `HOUR`, and `MINUTE`.
  final pulumi.Input<String>? prefixFormat;
  /// Whether the destination file path includes either or both of the selected elements. Valid values are `EXECUTION_ID` and `SCHEMA_VERSION`.
  final pulumi.Input<List<String>>? prefixHierarchies;
  /// Format of the prefix, and whether it applies to the file name, file path, or both. Valid values are `FILENAME`, `PATH`, and `PATH_AND_FILENAME`.
  final pulumi.Input<String>? prefixType;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig].
  /// [prefixFormat] Level of granularity included in the prefix. Valid values are `YEAR`, `MONTH`, `DAY`, `HOUR`, and `MINUTE`.
  /// [prefixHierarchies] Whether the destination file path includes either or both of the selected elements. Valid values are `EXECUTION_ID` and `SCHEMA_VERSION`.
  /// [prefixType] Format of the prefix, and whether it applies to the file name, file path, or both. Valid values are `FILENAME`, `PATH`, and `PATH_AND_FILENAME`.
  const FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig({
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

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig(
      prefixFormat: (() { final guardedValue = map['prefixFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixHierarchies: (() { final guardedValue = map['prefixHierarchies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      prefixType: (() { final guardedValue = map['prefixType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
