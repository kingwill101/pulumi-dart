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
      mode: (map['mode'] as String).input(),
      value: (map['value'] as int).input(),
    );
  }
}

