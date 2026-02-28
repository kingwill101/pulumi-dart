// ignore_for_file: unused_element, unnecessary_cast

/// Denoise preprocessing configuration. **Note:** This configuration is not supported.
class Denoise {
  /// Set strength of the denoise. Enter a value between 0 and 1. The higher the value, the smoother the image. 0 is no denoising. The default is 0.
  final double? strength;

  /// Set the denoiser mode. The default is `standard`. Supported denoiser modes: - `standard` - `grain`
  final String? tune;

  /// Creates a new [Denoise].
  /// [strength] Set strength of the denoise. Enter a value between 0 and 1. The higher the value, the smoother the image. 0 is no denoising. The default is 0.
  /// [tune] Set the denoiser mode. The default is `standard`. Supported denoiser modes: - `standard` - `grain`
  Denoise({
    this.strength,
    this.tune,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final strengthValue = strength;
    if (strengthValue != null) {
      map['strength'] = strengthValue;
    }
    final tuneValue = tune;
    if (tuneValue != null) {
      map['tune'] = tuneValue;
    }
    return map;
  }

  factory Denoise.fromMap(Map<String, dynamic> map) {
    return Denoise(
      strength: map['strength'] == null ? null : map['strength'] as double,
      tune: map['tune'] == null ? null : map['tune'] as String,
    );
  }
}
