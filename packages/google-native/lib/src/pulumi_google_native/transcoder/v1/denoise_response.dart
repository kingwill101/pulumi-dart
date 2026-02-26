// ignore_for_file: unused_element, unnecessary_cast

/// Denoise preprocessing configuration. **Note:** This configuration is not supported.
class DenoiseResponse {
  /// Set strength of the denoise. Enter a value between 0 and 1. The higher the value, the smoother the image. 0 is no denoising. The default is 0.
  final double strength;

  /// Set the denoiser mode. The default is `standard`. Supported denoiser modes: - `standard` - `grain`
  final String tune;

  DenoiseResponse({
    required this.strength,
    required this.tune,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['strength'] = strength;
    map['tune'] = tune;
    return map;
  }

  factory DenoiseResponse.fromMap(Map<String, dynamic> map) {
    return DenoiseResponse(
      strength: map['strength'] as double,
      tune: map['tune'] as String,
    );
  }
}
