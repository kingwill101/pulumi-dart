// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RandomId.
class RandomIdArgs {
  /// The number of random bytes to produce. The minimum value is 1, which produces eight bits of randomness.
  final pulumi.Input<int> byteLength;

  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  /// Arbitrary string to prefix the output value with. This string is supplied as-is, meaning it is not guaranteed to be URL-safe or base64 encoded.
  final pulumi.Input<String>? prefix;

  RandomIdArgs({
    required this.byteLength,
    this.keepers,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['byteLength'] = byteLength;
    final keepersValue = keepers;
    if (keepersValue != null) {
      map['keepers'] = keepersValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory RandomIdArgs.fromMap(Map<String, dynamic> map) {
    return RandomIdArgs(
      byteLength: pulumi.Input.asInput<int>(map['byteLength']),
      keepers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['keepers']),
      prefix: pulumi.Input.asOptionalInput<String>(map['prefix']),
    );
  }
}
