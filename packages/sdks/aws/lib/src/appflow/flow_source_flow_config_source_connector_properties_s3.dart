// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_source_flow_config_source_connector_properties_s3_s3_input_format_config.dart';

class FlowSourceFlowConfigSourceConnectorPropertiesS3 {
  final pulumi.Input<String> bucketName;
  final pulumi.Input<String> bucketPrefix;
  /// When you use Amazon S3 as the source, configuration format that you provide for the flow input data. See the `source_flow_config.source_connector_properties.s3.s3_input_format_config` Block for details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig?>? s3InputFormatConfig;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesS3].
  /// [bucketName] Required.
  /// [bucketPrefix] Required.
  /// [s3InputFormatConfig] When you use Amazon S3 as the source, configuration format that you provide for the flow input data. See the `source_flow_config.source_connector_properties.s3.s3_input_format_config` Block for details.
  const FlowSourceFlowConfigSourceConnectorPropertiesS3({
    required this.bucketName,
    required this.bucketPrefix,
    this.s3InputFormatConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefix': bucketPrefix,
      's3InputFormatConfig': ?pulumi.Input.mapOptionalInputValue<FlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig, Map<String, dynamic>>(s3InputFormatConfig, (value) => value.toMap()),
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesS3.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesS3(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPrefix: pulumi.Input.fromValue(map['bucketPrefix'] as String),
      s3InputFormatConfig: (() { final guardedValue = map['s3InputFormatConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
