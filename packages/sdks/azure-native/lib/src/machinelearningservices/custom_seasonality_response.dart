// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomSeasonalityResponse {
  /// Forecasting seasonality mode.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> mode;
  /// [Required] Seasonality value.
  final pulumi.Input<int> value;

  /// Creates a new [CustomSeasonalityResponse].
  /// [mode] Forecasting seasonality mode.
  /// [value] [Required] Seasonality value.
  const CustomSeasonalityResponse({
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
      mode: pulumi.Input.fromValue(map['mode'] as String),
      value: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['value'])),
    );
  }
}
