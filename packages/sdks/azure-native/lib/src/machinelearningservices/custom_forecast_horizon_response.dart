// ignore_for_file: unused_element, unnecessary_cast


/// The desired maximum forecast horizon in units of time-series frequency.
class CustomForecastHorizonResponse {
  /// Enum to determine forecast horizon selection mode.
  /// Expected value is 'Custom'.
  final String mode;
  /// [Required] Forecast horizon value.
  final int value;

  /// Creates a new [CustomForecastHorizonResponse].
  /// [mode] Enum to determine forecast horizon selection mode.
  /// [value] [Required] Forecast horizon value.
  CustomForecastHorizonResponse({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory CustomForecastHorizonResponse.fromMap(Map<String, dynamic> map) {
    return CustomForecastHorizonResponse(
      mode: map['mode'] as String,
      value: map['value'] as int,
    );
  }
}

