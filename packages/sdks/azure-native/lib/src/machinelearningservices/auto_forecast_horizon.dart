// ignore_for_file: unused_element, unnecessary_cast


/// Forecast horizon determined automatically by system.
class AutoForecastHorizon {
  /// Enum to determine forecast horizon selection mode.
  /// Expected value is 'Auto'.
  final String mode;

  /// Creates a new [AutoForecastHorizon].
  /// [mode] Enum to determine forecast horizon selection mode.
  AutoForecastHorizon({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoForecastHorizon.fromMap(Map<String, dynamic> map) {
    return AutoForecastHorizon(
      mode: map['mode'] as String,
    );
  }
}

