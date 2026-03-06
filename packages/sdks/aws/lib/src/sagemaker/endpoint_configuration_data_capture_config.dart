// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_configuration_data_capture_config_capture_content_type_header.dart';
import 'endpoint_configuration_data_capture_config_capture_option.dart';

class EndpointConfigurationDataCaptureConfig {
  /// Content type headers to capture. See `capture_content_type_header` below.
  final pulumi.Input<EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader>? captureContentTypeHeader;
  /// What data to capture. Fields are documented below.
  final pulumi.Input<List<EndpointConfigurationDataCaptureConfigCaptureOption>> captureOptions;
  /// URL for S3 location where the captured data is stored.
  final pulumi.Input<String> destinationS3Uri;
  /// Flag to enable data capture. Defaults to `false`.
  final pulumi.Input<bool>? enableCapture;
  /// Portion of data to capture. Should be between 0 and 100.
  final pulumi.Input<int> initialSamplingPercentage;
  /// ARN of a KMS key that SageMaker AI uses to encrypt the captured data on S3.
  final pulumi.Input<String>? kmsKeyId;

  /// Creates a new [EndpointConfigurationDataCaptureConfig].
  /// [captureContentTypeHeader] Content type headers to capture. See `capture_content_type_header` below.
  /// [captureOptions] What data to capture. Fields are documented below.
  /// [destinationS3Uri] URL for S3 location where the captured data is stored.
  /// [enableCapture] Flag to enable data capture. Defaults to `false`.
  /// [initialSamplingPercentage] Portion of data to capture. Should be between 0 and 100.
  /// [kmsKeyId] ARN of a KMS key that SageMaker AI uses to encrypt the captured data on S3.
  const EndpointConfigurationDataCaptureConfig({
    this.captureContentTypeHeader,
    required this.captureOptions,
    required this.destinationS3Uri,
    this.enableCapture,
    required this.initialSamplingPercentage,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captureContentTypeHeader': ?pulumi.Input.mapOptionalInputValue<EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader, Map<String, dynamic>>(captureContentTypeHeader, (value) => value.toMap()),
      'captureOptions': pulumi.Input.mapInputValue<List<EndpointConfigurationDataCaptureConfigCaptureOption>, List<Map<String, dynamic>>>(captureOptions, (value) => pulumi.Input.encodeList<EndpointConfigurationDataCaptureConfigCaptureOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationS3Uri': destinationS3Uri,
      'enableCapture': ?enableCapture,
      'initialSamplingPercentage': initialSamplingPercentage,
      'kmsKeyId': ?kmsKeyId,
    };
  }

  factory EndpointConfigurationDataCaptureConfig.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationDataCaptureConfig(
      captureContentTypeHeader: (() { final guardedValue = map['captureContentTypeHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      captureOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointConfigurationDataCaptureConfigCaptureOption>(map['captureOptions']!, (value) => EndpointConfigurationDataCaptureConfigCaptureOption.fromMap((value as Map).cast<String, dynamic>()))),
      destinationS3Uri: pulumi.Input.fromValue(map['destinationS3Uri'] as String),
      enableCapture: (() { final guardedValue = map['enableCapture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      initialSamplingPercentage: pulumi.Input.fromValue(map['initialSamplingPercentage'] as int),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

