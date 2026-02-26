// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RandomUuid4.
class RandomUuid4Args {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final Input<Map<String, String>>? keepers;

  RandomUuid4Args({
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

  factory RandomUuid4Args.fromMap(Map<String, dynamic> map) {
    return RandomUuid4Args(
      keepers: Input.asOptionalInput<Map<String, String>>(map['keepers']),
    );
  }
}
