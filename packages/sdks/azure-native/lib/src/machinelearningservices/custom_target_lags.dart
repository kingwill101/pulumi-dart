// ignore_for_file: unused_element, unnecessary_cast


class CustomTargetLags {
  /// Target lags selection modes.
  /// Expected value is 'Custom'.
  final String mode;
  /// [Required] Set target lags values.
  final List<int> values;

  /// Creates a new [CustomTargetLags].
  /// [mode] Target lags selection modes.
  /// [values] [Required] Set target lags values.
  CustomTargetLags({
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
      mode: map['mode'] as String,
      values: (map['values'] as List).cast<int>(),
    );
  }
}

