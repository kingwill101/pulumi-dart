// ignore_for_file: unused_element, unnecessary_cast


class CustomSeasonalityResponse {
  /// Forecasting seasonality mode.
  /// Expected value is 'Custom'.
  final String mode;
  /// [Required] Seasonality value.
  final int value;

  /// Creates a new [CustomSeasonalityResponse].
  /// [mode] Forecasting seasonality mode.
  /// [value] [Required] Seasonality value.
  CustomSeasonalityResponse({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory CustomSeasonalityResponse.fromMap(Map<String, dynamic> map) {
    return CustomSeasonalityResponse(
      mode: map['mode'] as String,
      value: map['value'] as int,
    );
  }
}

