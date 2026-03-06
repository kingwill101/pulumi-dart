// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_configuration_async_inference_config_output_config_notification_config.dart';

class EndpointConfigurationAsyncInferenceConfigOutputConfig {
  /// KMS key that SageMaker AI uses to encrypt the asynchronous inference output in S3.
  final pulumi.Input<String>? kmsKeyId;
  /// Configuration for notifications of inference results for asynchronous inference.
  final pulumi.Input<EndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig>? notificationConfig;
  /// S3 location to upload failure inference responses to.
  final pulumi.Input<String>? s3FailurePath;
  /// S3 location to upload inference responses to.
  final pulumi.Input<String> s3OutputPath;

  /// Creates a new [EndpointConfigurationAsyncInferenceConfigOutputConfig].
  /// [kmsKeyId] KMS key that SageMaker AI uses to encrypt the asynchronous inference output in S3.
  /// [notificationConfig] Configuration for notifications of inference results for asynchronous inference.
  /// [s3FailurePath] S3 location to upload failure inference responses to.
  /// [s3OutputPath] S3 location to upload inference responses to.
  const EndpointConfigurationAsyncInferenceConfigOutputConfig({
    this.kmsKeyId,
    this.notificationConfig,
    this.s3FailurePath,
    required this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<EndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      's3FailurePath': ?s3FailurePath,
      's3OutputPath': s3OutputPath,
    };
  }

  factory EndpointConfigurationAsyncInferenceConfigOutputConfig.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationAsyncInferenceConfigOutputConfig(
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationConfig: (() { final guardedValue = map['notificationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3FailurePath: (() { final guardedValue = map['s3FailurePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3OutputPath: pulumi.Input.fromValue(map['s3OutputPath'] as String),
    );
  }
}

