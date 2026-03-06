// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointConfigurationDataCaptureConfigCaptureOption {
  /// Data to be captured. Should be one of `Input`, `Output` or `InputAndOutput`.
  final pulumi.Input<String> captureMode;

  /// Creates a new [EndpointConfigurationDataCaptureConfigCaptureOption].
  /// [captureMode] Data to be captured. Should be one of `Input`, `Output` or `InputAndOutput`.
  const EndpointConfigurationDataCaptureConfigCaptureOption({
    required this.captureMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captureMode': captureMode,
    };
  }

  factory EndpointConfigurationDataCaptureConfigCaptureOption.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationDataCaptureConfigCaptureOption(
      captureMode: pulumi.Input.fromValue(map['captureMode'] as String),
    );
  }
}

