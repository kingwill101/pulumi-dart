// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_configuration_async_inference_config_output_config_notification_config.dart';

class EndpointConfigurationAsyncInferenceConfigOutputConfig {
  /// KMS key that SageMaker AI uses to encrypt the asynchronous inference output in S3.
  final String? kmsKeyId;

  /// Configuration for notifications of inference results for asynchronous inference.
  final EndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig?
      notificationConfig;

  /// S3 location to upload failure inference responses to.
  final String? s3FailurePath;

  /// S3 location to upload inference responses to.
  final String s3OutputPath;

  /// Creates a new [EndpointConfigurationAsyncInferenceConfigOutputConfig].
  /// [kmsKeyId] KMS key that SageMaker AI uses to encrypt the asynchronous inference output in S3.
  /// [notificationConfig] Configuration for notifications of inference results for asynchronous inference.
  /// [s3FailurePath] S3 location to upload failure inference responses to.
  /// [s3OutputPath] S3 location to upload inference responses to.
  EndpointConfigurationAsyncInferenceConfigOutputConfig({
    this.kmsKeyId,
    this.notificationConfig,
    this.s3FailurePath,
    required this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = notificationConfigValue.toMap();
    }
    final s3FailurePathValue = s3FailurePath;
    if (s3FailurePathValue != null) {
      map['s3FailurePath'] = s3FailurePathValue;
    }
    map['s3OutputPath'] = s3OutputPath;
    return map;
  }

  factory EndpointConfigurationAsyncInferenceConfigOutputConfig.fromMap(
      Map<String, dynamic> map) {
    return EndpointConfigurationAsyncInferenceConfigOutputConfig(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      notificationConfig: map['notificationConfig'] == null
          ? null
          : EndpointConfigurationAsyncInferenceConfigOutputConfigNotificationConfig
              .fromMap(
                  (map['notificationConfig'] as Map).cast<String, dynamic>()),
      s3FailurePath:
          map['s3FailurePath'] == null ? null : map['s3FailurePath'] as String,
      s3OutputPath: map['s3OutputPath'] as String,
    );
  }
}
