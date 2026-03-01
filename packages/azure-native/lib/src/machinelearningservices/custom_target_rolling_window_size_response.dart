// ignore_for_file: unused_element, unnecessary_cast


class CustomTargetRollingWindowSizeResponse {
  /// Target rolling windows size mode.
  /// Expected value is 'Custom'.
  final String mode;
  /// [Required] TargetRollingWindowSize value.
  final int value;

  /// Creates a new [CustomTargetRollingWindowSizeResponse].
  /// [mode] Target rolling windows size mode.
  /// [value] [Required] TargetRollingWindowSize value.
  CustomTargetRollingWindowSizeResponse({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory CustomTargetRollingWindowSizeResponse.fromMap(Map<String, dynamic> map) {
    return CustomTargetRollingWindowSizeResponse(
      mode: map['mode'] as String,
      value: map['value'] as int,
    );
  }
}

