// ignore_for_file: unused_element, unnecessary_cast


class AutoSeasonalityResponse {
  /// Forecasting seasonality mode.
  /// Expected value is 'Auto'.
  final String mode;

  /// Creates a new [AutoSeasonalityResponse].
  /// [mode] Forecasting seasonality mode.
  AutoSeasonalityResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoSeasonalityResponse.fromMap(Map<String, dynamic> map) {
    return AutoSeasonalityResponse(
      mode: map['mode'] as String,
    );
  }
}

