// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoSeasonalityResponse {
  /// Forecasting seasonality mode.
  /// Expected value is 'Auto'.
  final pulumi.Input<String> mode;

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
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

