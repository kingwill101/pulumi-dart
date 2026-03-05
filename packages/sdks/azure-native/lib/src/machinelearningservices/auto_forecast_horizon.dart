// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Forecast horizon determined automatically by system.
class AutoForecastHorizon {
  /// Enum to determine forecast horizon selection mode.
  /// Expected value is 'Auto'.
  final pulumi.Input<String> mode;

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
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

