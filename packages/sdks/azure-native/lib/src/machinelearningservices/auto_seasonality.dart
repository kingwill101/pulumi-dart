// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoSeasonality {
  /// Forecasting seasonality mode.
  /// Expected value is 'Auto'.
  final pulumi.Input<String> mode;

  /// Creates a new [AutoSeasonality].
  /// [mode] Forecasting seasonality mode.
  AutoSeasonality({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoSeasonality.fromMap(Map<String, dynamic> map) {
    return AutoSeasonality(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

