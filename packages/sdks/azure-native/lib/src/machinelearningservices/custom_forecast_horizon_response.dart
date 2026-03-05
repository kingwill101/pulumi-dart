// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The desired maximum forecast horizon in units of time-series frequency.
class CustomForecastHorizonResponse {
  /// Enum to determine forecast horizon selection mode.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> mode;
  /// [Required] Forecast horizon value.
  final pulumi.Input<int> value;

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
      mode: pulumi.Input.fromValue(map['mode'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}

