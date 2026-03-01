// ignore_for_file: unused_element, unnecessary_cast


class AutoSeasonality {
  /// Forecasting seasonality mode.
  /// Expected value is 'Auto'.
  final String mode;

  /// Creates a new [AutoSeasonality].
  /// [mode] Forecasting seasonality mode.
  AutoSeasonality({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoSeasonality.fromMap(Map<String, dynamic> map) {
    return AutoSeasonality(
      mode: map['mode'] as String,
    );
  }
}

