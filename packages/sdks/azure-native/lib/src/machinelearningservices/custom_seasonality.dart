// ignore_for_file: unused_element, unnecessary_cast


class CustomSeasonality {
  /// Forecasting seasonality mode.
  /// Expected value is 'Custom'.
  final String mode;
  /// [Required] Seasonality value.
  final int value;

  /// Creates a new [CustomSeasonality].
  /// [mode] Forecasting seasonality mode.
  /// [value] [Required] Seasonality value.
  CustomSeasonality({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory CustomSeasonality.fromMap(Map<String, dynamic> map) {
    return CustomSeasonality(
      mode: map['mode'] as String,
      value: map['value'] as int,
    );
  }
}

