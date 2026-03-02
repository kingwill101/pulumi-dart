// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomTargetLagsResponse {
  /// Target lags selection modes.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> mode;
  /// [Required] Set target lags values.
  final pulumi.Input<List<int>> values;

  /// Creates a new [CustomTargetLagsResponse].
  /// [mode] Target lags selection modes.
  /// [values] [Required] Set target lags values.
  CustomTargetLagsResponse({
    required this.mode,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'values': values,
    };
  }

  factory CustomTargetLagsResponse.fromMap(Map<String, dynamic> map) {
    return CustomTargetLagsResponse(
      mode: (map['mode'] as String).input(),
      values: ((map['values'] as List).cast<int>()).input(),
    );
  }
}

