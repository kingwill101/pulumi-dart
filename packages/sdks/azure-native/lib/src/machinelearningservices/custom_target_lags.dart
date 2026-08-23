// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomTargetLags {
  /// Target lags selection modes.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> mode;
  /// [Required] Set target lags values.
  final pulumi.Input<List<int>> values;

  /// Creates a new [CustomTargetLags].
  /// [mode] Target lags selection modes.
  /// [values] [Required] Set target lags values.
  const CustomTargetLags({
    required this.mode,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'values': values,
    };
  }

  factory CustomTargetLags.fromMap(Map<String, dynamic> map) {
    return CustomTargetLags(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<int>()),
    );
  }
}
