// ignore_for_file: unused_element, unnecessary_cast


class CustomTargetRollingWindowSize {
  /// Target rolling windows size mode.
  /// Expected value is 'Custom'.
  final String mode;
  /// [Required] TargetRollingWindowSize value.
  final int value;

  /// Creates a new [CustomTargetRollingWindowSize].
  /// [mode] Target rolling windows size mode.
  /// [value] [Required] TargetRollingWindowSize value.
  CustomTargetRollingWindowSize({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory CustomTargetRollingWindowSize.fromMap(Map<String, dynamic> map) {
    return CustomTargetRollingWindowSize(
      mode: map['mode'] as String,
      value: map['value'] as int,
    );
  }
}

