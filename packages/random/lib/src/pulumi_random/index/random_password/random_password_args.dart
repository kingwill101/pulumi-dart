// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RandomPassword.
class RandomPasswordArgs {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final Input<Map<String, String>>? keepers;

  /// The length of the string desired. The minimum value for length is 1 and, length must also be >= (<span pulumi-lang-nodejs="`minUpper`" pulumi-lang-dotnet="`MinUpper`" pulumi-lang-go="`minUpper`" pulumi-lang-python="`min_upper`" pulumi-lang-yaml="`minUpper`" pulumi-lang-java="`minUpper`">`min_upper`</span> + <span pulumi-lang-nodejs="`minLower`" pulumi-lang-dotnet="`MinLower`" pulumi-lang-go="`minLower`" pulumi-lang-python="`min_lower`" pulumi-lang-yaml="`minLower`" pulumi-lang-java="`minLower`">`min_lower`</span> + <span pulumi-lang-nodejs="`minNumeric`" pulumi-lang-dotnet="`MinNumeric`" pulumi-lang-go="`minNumeric`" pulumi-lang-python="`min_numeric`" pulumi-lang-yaml="`minNumeric`" pulumi-lang-java="`minNumeric`">`min_numeric`</span> + <span pulumi-lang-nodejs="`minSpecial`" pulumi-lang-dotnet="`MinSpecial`" pulumi-lang-go="`minSpecial`" pulumi-lang-python="`min_special`" pulumi-lang-yaml="`minSpecial`" pulumi-lang-java="`minSpecial`">`min_special`</span>).
  final Input<int> length;

  /// Include lowercase alphabet characters in the result. Default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? lower;

  /// Minimum number of lowercase alphabet characters in the result. Default value is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final Input<int>? minLower;

  /// Minimum number of numeric characters in the result. Default value is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final Input<int>? minNumeric;

  /// Minimum number of special characters in the result. Default value is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final Input<int>? minSpecial;

  /// Minimum number of uppercase alphabet characters in the result. Default value is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final Input<int>? minUpper;

  /// Include numeric characters in the result. Default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. If <span pulumi-lang-nodejs="`number`" pulumi-lang-dotnet="`Number`" pulumi-lang-go="`number`" pulumi-lang-python="`number`" pulumi-lang-yaml="`number`" pulumi-lang-java="`number`">`number`</span>, <span pulumi-lang-nodejs="`upper`" pulumi-lang-dotnet="`Upper`" pulumi-lang-go="`upper`" pulumi-lang-python="`upper`" pulumi-lang-yaml="`upper`" pulumi-lang-java="`upper`">`upper`</span>, <span pulumi-lang-nodejs="`lower`" pulumi-lang-dotnet="`Lower`" pulumi-lang-go="`lower`" pulumi-lang-python="`lower`" pulumi-lang-yaml="`lower`" pulumi-lang-java="`lower`">`lower`</span>, and <span pulumi-lang-nodejs="`special`" pulumi-lang-dotnet="`Special`" pulumi-lang-go="`special`" pulumi-lang-python="`special`" pulumi-lang-yaml="`special`" pulumi-lang-java="`special`">`special`</span> are all configured, at least one of them must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. **NOTE**: This is deprecated, use <span pulumi-lang-nodejs="`numeric`" pulumi-lang-dotnet="`Numeric`" pulumi-lang-go="`numeric`" pulumi-lang-python="`numeric`" pulumi-lang-yaml="`numeric`" pulumi-lang-java="`numeric`">`numeric`</span> instead.
  final Input<bool>? number;

  /// Include numeric characters in the result. Default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. If <span pulumi-lang-nodejs="`numeric`" pulumi-lang-dotnet="`Numeric`" pulumi-lang-go="`numeric`" pulumi-lang-python="`numeric`" pulumi-lang-yaml="`numeric`" pulumi-lang-java="`numeric`">`numeric`</span>, <span pulumi-lang-nodejs="`upper`" pulumi-lang-dotnet="`Upper`" pulumi-lang-go="`upper`" pulumi-lang-python="`upper`" pulumi-lang-yaml="`upper`" pulumi-lang-java="`upper`">`upper`</span>, <span pulumi-lang-nodejs="`lower`" pulumi-lang-dotnet="`Lower`" pulumi-lang-go="`lower`" pulumi-lang-python="`lower`" pulumi-lang-yaml="`lower`" pulumi-lang-java="`lower`">`lower`</span>, and <span pulumi-lang-nodejs="`special`" pulumi-lang-dotnet="`Special`" pulumi-lang-go="`special`" pulumi-lang-python="`special`" pulumi-lang-yaml="`special`" pulumi-lang-java="`special`">`special`</span> are all configured, at least one of them must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? numeric;

  /// Supply your own list of special characters to use for string generation.  This overrides the default character list in the special argument.  The <span pulumi-lang-nodejs="`special`" pulumi-lang-dotnet="`Special`" pulumi-lang-go="`special`" pulumi-lang-python="`special`" pulumi-lang-yaml="`special`" pulumi-lang-java="`special`">`special`</span> argument must still be set to true for any overwritten characters to be used in generation.
  final Input<String>? overrideSpecial;

  /// Include special characters in the result. These are `!@#$%&*()-_=+[]{}<>:?`. Default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? special;

  /// Include uppercase alphabet characters in the result. Default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? upper;

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
      keepers: Input.asOptionalInput<Map<String, String>>(map['keepers']),
      length: Input.asInput<int>(map['length']),
      lower: Input.asOptionalInput<bool>(map['lower']),
      minLower: Input.asOptionalInput<int>(map['minLower']),
      minNumeric: Input.asOptionalInput<int>(map['minNumeric']),
      minSpecial: Input.asOptionalInput<int>(map['minSpecial']),
      minUpper: Input.asOptionalInput<int>(map['minUpper']),
      number: Input.asOptionalInput<bool>(map['number']),
      numeric: Input.asOptionalInput<bool>(map['numeric']),
      overrideSpecial: Input.asOptionalInput<String>(map['overrideSpecial']),
      special: Input.asOptionalInput<bool>(map['special']),
      upper: Input.asOptionalInput<bool>(map['upper']),
    );
  }
}
