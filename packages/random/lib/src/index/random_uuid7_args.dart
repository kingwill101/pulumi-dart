// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_random_uuid7_random_uuid7_args_doc}
/// The set of arguments for RandomUuid7.
/// {@endtemplate}
/// {@macro pulumi_index_random_uuid7_random_uuid7_args_doc}
class RandomUuid7Args {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  /// Creates a new [RandomUuid7Args].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  RandomUuid7Args({
    Map<String, String>? keepers,
  }) : keepers = pulumi.Input.asOptionalInput<Map<String, String>>(keepers);

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
      keepers: map['keepers'] == null
          ? null
          : (map['keepers'] as Map).cast<String, String>(),
    );
  }
}
