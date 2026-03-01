// ignore_for_file: unused_element, unnecessary_cast


class EndpointConfigurationDataCaptureConfigCaptureOption {
  /// Data to be captured. Should be one of `Input`, `Output` or `InputAndOutput`.
  final String captureMode;

  /// Creates a new [EndpointConfigurationDataCaptureConfigCaptureOption].
  /// [captureMode] Data to be captured. Should be one of `Input`, `Output` or `InputAndOutput`.
  EndpointConfigurationDataCaptureConfigCaptureOption({
    required this.captureMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captureMode': captureMode,
    };
  }

  factory EndpointConfigurationDataCaptureConfigCaptureOption.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationDataCaptureConfigCaptureOption(
      captureMode: map['captureMode'] as String,
    );
  }
}

