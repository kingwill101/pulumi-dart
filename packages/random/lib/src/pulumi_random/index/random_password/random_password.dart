import 'package:pulumi/pulumi.dart' as pulumi;
import 'random_password_args.dart';

/// ## Example Usage
///
///
///
/// ## Import
///
/// You can import external passwords into your Pulumi programs as follows:
///
/// ```sh<break>
/// $ import random:index/randomPassword:RandomPassword newPassword supersecret
/// <break>```
///
/// This command will encode the `supersecret` token in Pulumi state and generate a code suggestion to
/// include a new RandomPassword resource in your Pulumi program. Include the suggested code and do a
/// `pulumi up`. Your secret password is now securely stored in Pulumi, and you can reference it in your
/// Pulumi program as `newPassword.result`.
/// ```
class RandomPassword extends pulumi.CustomResource {
  /// A bcrypt hash of the generated random string. **NOTE**: If the generated random string is greater than 72 bytes in length, `bcrypt_hash` will contain a hash of the first 72 bytes.
  late final pulumi.Output<String> bcryptHash;

  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final pulumi.Output<Map<String, String>?> keepers;

  /// The length of the string desired. The minimum value for length is 1 and, length must also be >= (`min_upper` + `min_lower` + `min_numeric` + `min_special`).
  late final pulumi.Output<int> length;

  /// Include lowercase alphabet characters in the result. Default value is `true`.
  late final pulumi.Output<bool> lower;

  /// Minimum number of lowercase alphabet characters in the result. Default value is `0`.
  late final pulumi.Output<int> minLower;

  /// Minimum number of numeric characters in the result. Default value is `0`.
  late final pulumi.Output<int> minNumeric;

  /// Minimum number of special characters in the result. Default value is `0`.
  late final pulumi.Output<int> minSpecial;

  /// Minimum number of uppercase alphabet characters in the result. Default value is `0`.
  late final pulumi.Output<int> minUpper;

  /// Include numeric characters in the result. Default value is `true`. If `number`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`. **NOTE**: This is deprecated, use `numeric` instead.
  late final pulumi.Output<bool> number;

  /// Include numeric characters in the result. Default value is `true`. If `numeric`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`.
  late final pulumi.Output<bool> numeric;

  /// Supply your own list of special characters to use for string generation.  This overrides the default character list in the special argument.  The `special` argument must still be set to true for any overwritten characters to be used in generation.
  late final pulumi.Output<String?> overrideSpecial;

  /// The generated random string.
  late final pulumi.Output<String> result;

  /// Include special characters in the result. These are `!@#$%&*()-_=+[]{}<>:?`. Default value is `true`.
  late final pulumi.Output<bool> special;

  /// Include uppercase alphabet characters in the result. Default value is `true`.
  late final pulumi.Output<bool> upper;

  RandomPassword(
    String name, {
    RandomPasswordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomPassword:RandomPassword',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bcryptHash = registerOutput<String>('bcryptHash');
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.length = registerOutput<int>('length');
    this.lower = registerOutput<bool>('lower');
    this.minLower = registerOutput<int>('minLower');
    this.minNumeric = registerOutput<int>('minNumeric');
    this.minSpecial = registerOutput<int>('minSpecial');
    this.minUpper = registerOutput<int>('minUpper');
    this.number = registerOutput<bool>('number');
    this.numeric = registerOutput<bool>('numeric');
    this.overrideSpecial = registerOutput<String?>('overrideSpecial');
    this.result = registerOutput<String>('result');
    this.special = registerOutput<bool>('special');
    this.upper = registerOutput<bool>('upper');
  }
}
