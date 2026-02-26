// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RandomBytes.
class RandomBytesArgs {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final Input<Map<String, String>>? keepers;

  /// The number of bytes requested. The minimum value for length is 1.
  final Input<int> length;

  RandomBytesArgs({
    this.keepers,
    required this.length,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keepersValue = keepers;
    if (keepersValue != null) {
      map['keepers'] = keepersValue;
    }
    map['length'] = length;
    return map;
  }

  factory RandomBytesArgs.fromMap(Map<String, dynamic> map) {
    return RandomBytesArgs(
      keepers: Input.asOptionalInput<Map<String, String>>(map['keepers']),
      length: Input.asInput<int>(map['length']),
    );
  }
}
