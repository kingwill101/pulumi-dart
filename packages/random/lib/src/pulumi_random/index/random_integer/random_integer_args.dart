// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RandomInteger.
class RandomIntegerArgs {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final Input<Map<String, String>>? keepers;

  /// The maximum inclusive value of the range.
  final Input<int> max;

  /// The minimum inclusive value of the range.
  final Input<int> min;

  /// A custom seed to always produce the same value.
  final Input<String>? seed;

  RandomIntegerArgs({
    this.keepers,
    required this.max,
    required this.min,
    this.seed,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keepersValue = keepers;
    if (keepersValue != null) {
      map['keepers'] = keepersValue;
    }
    map['max'] = max;
    map['min'] = min;
    final seedValue = seed;
    if (seedValue != null) {
      map['seed'] = seedValue;
    }
    return map;
  }

  factory RandomIntegerArgs.fromMap(Map<String, dynamic> map) {
    return RandomIntegerArgs(
      keepers: Input.asOptionalInput<Map<String, String>>(map['keepers']),
      max: Input.asInput<int>(map['max']),
      min: Input.asInput<int>(map['min']),
      seed: Input.asOptionalInput<String>(map['seed']),
    );
  }
}
