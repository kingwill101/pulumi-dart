// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RandomShuffle.
class RandomShuffleArgs {
  /// The list of strings to shuffle.
  final pulumi.Input<List<String>> inputs;

  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  /// The number of results to return. Defaults to the number of items in the `input` list. If fewer items are requested, some elements will be excluded from the result. If more items are requested, items will be repeated in the result but not more frequently than the number of items in the input list.
  final pulumi.Input<int>? resultCount;

  /// Arbitrary string with which to seed the random number generator, in order to produce less-volatile permutations of the list.
  final pulumi.Input<String>? seed;

  RandomShuffleArgs({
    required this.inputs,
    this.keepers,
    this.resultCount,
    this.seed,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputs'] = inputs;
    final keepersValue = keepers;
    if (keepersValue != null) {
      map['keepers'] = keepersValue;
    }
    final resultCountValue = resultCount;
    if (resultCountValue != null) {
      map['resultCount'] = resultCountValue;
    }
    final seedValue = seed;
    if (seedValue != null) {
      map['seed'] = seedValue;
    }
    return map;
  }

  factory RandomShuffleArgs.fromMap(Map<String, dynamic> map) {
    return RandomShuffleArgs(
      inputs: pulumi.Input.asInput<List<String>>(map['inputs']),
      keepers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['keepers']),
      resultCount: pulumi.Input.asOptionalInput<int>(map['resultCount']),
      seed: pulumi.Input.asOptionalInput<String>(map['seed']),
    );
  }
}
