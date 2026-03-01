// ignore_for_file: unused_element, unnecessary_cast


class AutoTargetLags {
  /// Target lags selection modes.
  /// Expected value is 'Auto'.
  final String mode;

  /// Creates a new [AutoTargetLags].
  /// [mode] Target lags selection modes.
  AutoTargetLags({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoTargetLags.fromMap(Map<String, dynamic> map) {
    return AutoTargetLags(
      mode: map['mode'] as String,
    );
  }
}

