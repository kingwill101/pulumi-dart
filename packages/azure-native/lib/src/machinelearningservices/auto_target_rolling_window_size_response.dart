// ignore_for_file: unused_element, unnecessary_cast


/// Target lags rolling window determined automatically.
class AutoTargetRollingWindowSizeResponse {
  /// Target rolling windows size mode.
  /// Expected value is 'Auto'.
  final String mode;

  /// Creates a new [AutoTargetRollingWindowSizeResponse].
  /// [mode] Target rolling windows size mode.
  AutoTargetRollingWindowSizeResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoTargetRollingWindowSizeResponse.fromMap(Map<String, dynamic> map) {
    return AutoTargetRollingWindowSizeResponse(
      mode: map['mode'] as String,
    );
  }
}

