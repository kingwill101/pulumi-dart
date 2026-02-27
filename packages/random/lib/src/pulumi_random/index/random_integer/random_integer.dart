import 'package:pulumi/pulumi.dart';
import 'random_integer_args.dart';

/// The resource `random.RandomInteger` generates random values from a given range, described by the `min` and `max` attributes of a given resource.
///
/// This resource can be used in conjunction with resources that have the `create_before_destroy` lifecycle flag set, to avoid conflicts with unique names during the brief period where both the old and new resources exist concurrently.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// Random integers can be imported using the result, min, and max, with an
///
/// optional seed. This can be used to replace a config value with a value
///
/// interpolated from the random provider without experiencing diffs.
///
/// Example (values are separated by a ,):
///
/// ```sh
/// $ pulumi import random:index/randomInteger:RandomInteger priority 15390,1,50000
/// ```
class RandomInteger extends CustomResource {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final Output<Map<String, String>?> keepers;

  /// The maximum inclusive value of the range.
  late final Output<int> max;

  /// The minimum inclusive value of the range.
  late final Output<int> min;

  /// The random integer result.
  late final Output<int> result;

  /// A custom seed to always produce the same value.
  late final Output<String?> seed;

  RandomInteger(
    String name, {
    RandomIntegerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'random:index/randomInteger:RandomInteger',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.max = registerOutput<int>('max');
    this.min = registerOutput<int>('min');
    this.result = registerOutput<int>('result');
    this.seed = registerOutput<String?>('seed');
  }
}
