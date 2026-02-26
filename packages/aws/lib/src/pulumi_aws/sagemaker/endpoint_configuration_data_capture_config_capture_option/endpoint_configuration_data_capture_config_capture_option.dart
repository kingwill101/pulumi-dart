// ignore_for_file: unused_element, unnecessary_cast

class EndpointConfigurationDataCaptureConfigCaptureOption {
  /// Data to be captured. Should be one of `Input`, `Output` or `InputAndOutput`.
  final String captureMode;

  EndpointConfigurationDataCaptureConfigCaptureOption({
    required this.captureMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['captureMode'] = captureMode;
    return map;
  }

  factory EndpointConfigurationDataCaptureConfigCaptureOption.fromMap(
      Map<String, dynamic> map) {
    return EndpointConfigurationDataCaptureConfigCaptureOption(
      captureMode: map['captureMode'] as String,
    );
  }
}
