// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Forecast horizon determined automatically by system.
class AutoForecastHorizonResponse {
  /// Enum to determine forecast horizon selection mode.
  /// Expected value is 'Auto'.
  final pulumi.Input<String> mode;

  /// Creates a new [AutoForecastHorizonResponse].
  /// [mode] Enum to determine forecast horizon selection mode.
  AutoForecastHorizonResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoForecastHorizonResponse.fromMap(Map<String, dynamic> map) {
    return AutoForecastHorizonResponse(
      mode: (map['mode'] as String).input(),
    );
  }
}

