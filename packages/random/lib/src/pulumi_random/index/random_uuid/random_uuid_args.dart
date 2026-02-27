// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RandomUuid.
class RandomUuidArgs {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  RandomUuidArgs({
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

  factory RandomUuidArgs.fromMap(Map<String, dynamic> map) {
    return RandomUuidArgs(
      keepers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['keepers']),
    );
  }
}
