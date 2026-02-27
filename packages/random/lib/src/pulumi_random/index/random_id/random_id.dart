import 'package:pulumi/pulumi.dart' as pulumi;
import 'random_id_args.dart';

/// The resource `random.RandomId` generates random numbers that are intended to be
/// used as unique identifiers for other resources. If the output is considered
/// sensitive, and should not be displayed in the CLI, use `random.RandomBytes`
/// instead.
///
/// This resource *does* use a cryptographic random number generator in order
/// to minimize the chance of collisions, making the results of this resource
/// when a 16-byte identifier is requested of equivalent uniqueness to a
/// type-4 UUID.
///
/// This resource can be used in conjunction with resources that have
/// the `create_before_destroy` lifecycle flag set to avoid conflicts with
/// unique names during the brief period where both the old and new resources
/// exist concurrently.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// Random IDs can be imported using the b64_url with an optional prefix. This
///
/// can be used to replace a config value with a value interpolated from the
///
/// random provider without experiencing diffs.
///
/// Example with no prefix:
///
/// ```sh
/// $ pulumi import random:index/randomId:RandomId server p-9hUg
/// ```
///
/// Example with prefix (prefix is separated by a ,):
///
/// ```sh
/// $ pulumi import random:index/randomId:RandomId server my-prefix-,p-9hUg
/// ```
class RandomId extends pulumi.CustomResource {
  /// The generated id presented in base64 without additional transformations.
  late final pulumi.Output<String> b64Std;

  /// The generated id presented in base64, using the URL-friendly character set: case-sensitive letters, digits and the characters `_` and `-`.
  late final pulumi.Output<String> b64Url;

  /// The number of random bytes to produce. The minimum value is 1, which produces eight bits of randomness.
  late final pulumi.Output<int> byteLength;

  /// The generated id presented in non-padded decimal digits.
  late final pulumi.Output<String> dec;

  /// The generated id presented in padded hexadecimal digits. This result will always be twice as long as the requested byte length.
  late final pulumi.Output<String> hex;

  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final pulumi.Output<Map<String, String>?> keepers;

  /// Arbitrary string to prefix the output value with. This string is supplied as-is, meaning it is not guaranteed to be URL-safe or base64 encoded.
  late final pulumi.Output<String?> prefix;

  RandomId(
    String name, {
    RandomIdArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomId:RandomId',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.b64Std = registerOutput<String>('b64Std');
    this.b64Url = registerOutput<String>('b64Url');
    this.byteLength = registerOutput<int>('byteLength');
    this.dec = registerOutput<String>('dec');
    this.hex = registerOutput<String>('hex');
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.prefix = registerOutput<String?>('prefix');
  }
}
