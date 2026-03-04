// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_upsolver_s3_output_format_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver {
  final pulumi.Input<String> bucketName;
  final pulumi.Input<String>? bucketPrefix;
  final pulumi.Input<
    FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig
  >
  s3OutputFormatConfig;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver].
  /// [bucketName] Required.
  /// [bucketPrefix] Optional.
  /// [s3OutputFormatConfig] Required.
  FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver({
    required this.bucketName,
    this.bucketPrefix,
    required this.s3OutputFormatConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefix': ?bucketPrefix,
      's3OutputFormatConfig':
          pulumi.Input.mapInputValue<
            FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig,
            Map<String, dynamic>
          >(s3OutputFormatConfig, (value) => value.toMap()),
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPrefix: (() {
        final guardedValue = map['bucketPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      s3OutputFormatConfig: pulumi.Input.fromValue(
        FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig.fromMap(
          (map['s3OutputFormatConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
