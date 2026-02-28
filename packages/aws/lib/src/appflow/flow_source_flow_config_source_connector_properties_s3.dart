// ignore_for_file: unused_element, unnecessary_cast

import 'flow_source_flow_config_source_connector_properties_s3_s3_input_format_config.dart';

class FlowSourceFlowConfigSourceConnectorPropertiesS3 {
  final String bucketName;
  final String bucketPrefix;

  /// When you use Amazon S3 as the source, the configuration format that you provide the flow input data. See S3 Input Format Config for details.
  final FlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig?
      s3InputFormatConfig;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesS3].
  /// [bucketName] Required.
  /// [bucketPrefix] Required.
  /// [s3InputFormatConfig] When you use Amazon S3 as the source, the configuration format that you provide the flow input data. See S3 Input Format Config for details.
  FlowSourceFlowConfigSourceConnectorPropertiesS3({
    required this.bucketName,
    required this.bucketPrefix,
    this.s3InputFormatConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['bucketPrefix'] = bucketPrefix;
    final s3InputFormatConfigValue = s3InputFormatConfig;
    if (s3InputFormatConfigValue != null) {
      map['s3InputFormatConfig'] = s3InputFormatConfigValue.toMap();
    }
    return map;
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesS3.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesS3(
      bucketName: map['bucketName'] as String,
      bucketPrefix: map['bucketPrefix'] as String,
      s3InputFormatConfig: map['s3InputFormatConfig'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig
              .fromMap(
                  (map['s3InputFormatConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
