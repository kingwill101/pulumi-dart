// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomSeasonality {
  /// Forecasting seasonality mode.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> mode;
  /// [Required] Seasonality value.
  final pulumi.Input<int> value;

  /// Creates a new [CustomSeasonality].
  /// [mode] Forecasting seasonality mode.
  /// [value] [Required] Seasonality value.
  CustomSeasonality({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory CustomSeasonality.fromMap(Map<String, dynamic> map) {
    return CustomSeasonality(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}

