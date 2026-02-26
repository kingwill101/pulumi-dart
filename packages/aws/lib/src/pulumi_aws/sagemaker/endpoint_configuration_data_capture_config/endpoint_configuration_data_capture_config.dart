// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_configuration_data_capture_config_capture_content_type_header/endpoint_configuration_data_capture_config_capture_content_type_header.dart';
import '../endpoint_configuration_data_capture_config_capture_option/endpoint_configuration_data_capture_config_capture_option.dart';

class EndpointConfigurationDataCaptureConfig {
  /// Content type headers to capture. See <span pulumi-lang-nodejs="`captureContentTypeHeader`" pulumi-lang-dotnet="`CaptureContentTypeHeader`" pulumi-lang-go="`captureContentTypeHeader`" pulumi-lang-python="`capture_content_type_header`" pulumi-lang-yaml="`captureContentTypeHeader`" pulumi-lang-java="`captureContentTypeHeader`">`capture_content_type_header`</span> below.
  final EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader?
      captureContentTypeHeader;

  /// What data to capture. Fields are documented below.
  final List<EndpointConfigurationDataCaptureConfigCaptureOption>
      captureOptions;

  /// URL for S3 location where the captured data is stored.
  final String destinationS3Uri;

  /// Flag to enable data capture. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? enableCapture;

  /// Portion of data to capture. Should be between 0 and 100.
  final int initialSamplingPercentage;

  /// ARN of a KMS key that SageMaker AI uses to encrypt the captured data on S3.
  final String? kmsKeyId;

  EndpointConfigurationDataCaptureConfig({
    this.captureContentTypeHeader,
    required this.captureOptions,
    required this.destinationS3Uri,
    this.enableCapture,
    required this.initialSamplingPercentage,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final captureContentTypeHeaderValue = captureContentTypeHeader;
    if (captureContentTypeHeaderValue != null) {
      map['captureContentTypeHeader'] = captureContentTypeHeaderValue.toMap();
    }
    map['captureOptions'] = Input.encodeList<
        EndpointConfigurationDataCaptureConfigCaptureOption,
        Map<String, dynamic>>(captureOptions, (value) => value.toMap());
    map['destinationS3Uri'] = destinationS3Uri;
    final enableCaptureValue = enableCapture;
    if (enableCaptureValue != null) {
      map['enableCapture'] = enableCaptureValue;
    }
    map['initialSamplingPercentage'] = initialSamplingPercentage;
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    return map;
  }

  factory EndpointConfigurationDataCaptureConfig.fromMap(
      Map<String, dynamic> map) {
    return EndpointConfigurationDataCaptureConfig(
      captureContentTypeHeader: map['captureContentTypeHeader'] == null
          ? null
          : EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader
              .fromMap((map['captureContentTypeHeader'] as Map)
                  .cast<String, dynamic>()),
      captureOptions:
          Input.decodeList<EndpointConfigurationDataCaptureConfigCaptureOption>(
              map['captureOptions'],
              (value) =>
                  EndpointConfigurationDataCaptureConfigCaptureOption.fromMap(
                      (value as Map).cast<String, dynamic>())),
      destinationS3Uri: map['destinationS3Uri'] as String,
      enableCapture:
          map['enableCapture'] == null ? null : map['enableCapture'] as bool,
      initialSamplingPercentage: map['initialSamplingPercentage'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
    );
  }
}
