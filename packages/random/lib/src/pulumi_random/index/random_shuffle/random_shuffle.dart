import 'package:pulumi/pulumi.dart' as pulumi;
import 'random_shuffle_args.dart';

/// The resource `random.RandomShuffle` generates a random permutation of a list of strings given as an argument.
class RandomShuffle extends pulumi.CustomResource {
  /// The list of strings to shuffle.
  late final pulumi.Output<List<String>> inputs;

  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final pulumi.Output<Map<String, String>?> keepers;

  /// The number of results to return. Defaults to the number of items in the `input` list. If fewer items are requested, some elements will be excluded from the result. If more items are requested, items will be repeated in the result but not more frequently than the number of items in the input list.
  late final pulumi.Output<int?> resultCount;

  /// Random permutation of the list of strings given in `input`. The number of elements is determined by `result_count` if set, or the number of elements in `input`.
  late final pulumi.Output<List<String>> results;

  /// Arbitrary string with which to seed the random number generator, in order to produce less-volatile permutations of the list.
  late final pulumi.Output<String?> seed;

  RandomShuffle(
    String name, {
    RandomShuffleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomShuffle:RandomShuffle',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.inputs = registerOutput<List<String>>('inputs');
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.resultCount = registerOutput<int?>('resultCount');
    this.results = registerOutput<List<String>>('results');
    this.seed = registerOutput<String?>('seed');
  }
}
