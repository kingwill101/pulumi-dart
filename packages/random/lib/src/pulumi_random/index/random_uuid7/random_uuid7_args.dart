// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RandomUuid7.
class RandomUuid7Args {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final Input<Map<String, String>>? keepers;

  RandomUuid7Args({
    this.keepers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keepersValue = keepers;
    if (keepersValue != null) {
      map['keepers'] = keepersValue;
    }
    return map;
  }

  factory RandomUuid7Args.fromMap(Map<String, dynamic> map) {
    return RandomUuid7Args(
      keepers: Input.asOptionalInput<Map<String, String>>(map['keepers']),
    );
  }
}
