// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RandomPassword.
class RandomPasswordArgs {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  /// The length of the string desired. The minimum value for length is 1 and, length must also be >= (`min_upper` + `min_lower` + `min_numeric` + `min_special`).
  final pulumi.Input<int> length;

  /// Include lowercase alphabet characters in the result. Default value is `true`.
  final pulumi.Input<bool>? lower;

  /// Minimum number of lowercase alphabet characters in the result. Default value is `0`.
  final pulumi.Input<int>? minLower;

  /// Minimum number of numeric characters in the result. Default value is `0`.
  final pulumi.Input<int>? minNumeric;

  /// Minimum number of special characters in the result. Default value is `0`.
  final pulumi.Input<int>? minSpecial;

  /// Minimum number of uppercase alphabet characters in the result. Default value is `0`.
  final pulumi.Input<int>? minUpper;

  /// Include numeric characters in the result. Default value is `true`. If `number`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`. **NOTE**: This is deprecated, use `numeric` instead.
  final pulumi.Input<bool>? number;

  /// Include numeric characters in the result. Default value is `true`. If `numeric`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`.
  final pulumi.Input<bool>? numeric;

  /// Supply your own list of special characters to use for string generation.  This overrides the default character list in the special argument.  The `special` argument must still be set to true for any overwritten characters to be used in generation.
  final pulumi.Input<String>? overrideSpecial;

  /// Include special characters in the result. These are `!@#$%&*()-_=+[]{}<>:?`. Default value is `true`.
  final pulumi.Input<bool>? special;

  /// Include uppercase alphabet characters in the result. Default value is `true`.
  final pulumi.Input<bool>? upper;

  RandomPasswordArgs({
    this.keepers,
    required this.length,
    this.lower,
    this.minLower,
    this.minNumeric,
    this.minSpecial,
    this.minUpper,
    this.number,
    this.numeric,
    this.overrideSpecial,
    this.special,
    this.upper,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keepersValue = keepers;
    if (keepersValue != null) {
      map['keepers'] = keepersValue;
    }
    map['length'] = length;
    final lowerValue = lower;
    if (lowerValue != null) {
      map['lower'] = lowerValue;
    }
    final minLowerValue = minLower;
    if (minLowerValue != null) {
      map['minLower'] = minLowerValue;
    }
    final minNumericValue = minNumeric;
    if (minNumericValue != null) {
      map['minNumeric'] = minNumericValue;
    }
    final minSpecialValue = minSpecial;
    if (minSpecialValue != null) {
      map['minSpecial'] = minSpecialValue;
    }
    final minUpperValue = minUpper;
    if (minUpperValue != null) {
      map['minUpper'] = minUpperValue;
    }
    final numberValue = number;
    if (numberValue != null) {
      map['number'] = numberValue;
    }
    final numericValue = numeric;
    if (numericValue != null) {
      map['numeric'] = numericValue;
    }
    final overrideSpecialValue = overrideSpecial;
    if (overrideSpecialValue != null) {
      map['overrideSpecial'] = overrideSpecialValue;
    }
    final specialValue = special;
    if (specialValue != null) {
      map['special'] = specialValue;
    }
    final upperValue = upper;
    if (upperValue != null) {
      map['upper'] = upperValue;
    }
    return map;
  }

  factory RandomPasswordArgs.fromMap(Map<String, dynamic> map) {
    return RandomPasswordArgs(
      keepers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['keepers']),
      length: pulumi.Input.asInput<int>(map['length']),
      lower: pulumi.Input.asOptionalInput<bool>(map['lower']),
      minLower: pulumi.Input.asOptionalInput<int>(map['minLower']),
      minNumeric: pulumi.Input.asOptionalInput<int>(map['minNumeric']),
      minSpecial: pulumi.Input.asOptionalInput<int>(map['minSpecial']),
      minUpper: pulumi.Input.asOptionalInput<int>(map['minUpper']),
      number: pulumi.Input.asOptionalInput<bool>(map['number']),
      numeric: pulumi.Input.asOptionalInput<bool>(map['numeric']),
      overrideSpecial:
          pulumi.Input.asOptionalInput<String>(map['overrideSpecial']),
      special: pulumi.Input.asOptionalInput<bool>(map['special']),
      upper: pulumi.Input.asOptionalInput<bool>(map['upper']),
    );
  }
}
