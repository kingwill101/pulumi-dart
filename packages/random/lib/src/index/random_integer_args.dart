// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_random_integer_random_integer_args_doc}
/// The set of arguments for RandomInteger.
/// {@endtemplate}
/// {@macro pulumi_index_random_integer_random_integer_args_doc}
class RandomIntegerArgs {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  /// The maximum inclusive value of the range.
  final pulumi.Input<int> max;

  /// The minimum inclusive value of the range.
  final pulumi.Input<int> min;

  /// A custom seed to always produce the same value.
  final pulumi.Input<String>? seed;

  /// Creates a new [RandomIntegerArgs].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [max] The maximum inclusive value of the range.
  /// [min] The minimum inclusive value of the range.
  /// [seed] A custom seed to always produce the same value.
  RandomIntegerArgs({
    Map<String, String>? keepers,
    required int max,
    required int min,
    String? seed,
  }) : keepers = pulumi.Input.asOptionalInput<Map<String, String>>(keepers),
       max = pulumi.Input.asInput<int>(max),
       min = pulumi.Input.asInput<int>(min),
       seed = pulumi.Input.asOptionalInput<String>(seed);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepers': ?keepers,
      'max': max,
      'min': min,
      'seed': ?seed,
    };
  }

  factory RandomIntegerArgs.fromMap(Map<String, dynamic> map) {
    return RandomIntegerArgs(
      keepers: map['keepers'] == null
          ? null
          : (map['keepers'] as Map).cast<String, String>(),
      max: map['max'] as int,
      min: map['min'] as int,
      seed: map['seed'] == null ? null : map['seed'] as String,
    );
  }
}
